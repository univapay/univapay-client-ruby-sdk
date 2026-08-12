# Hand-authored SDK extensions kept OUTSIDE the generated files.
#
# APIMatic regenerates the controllers and the client on every build, so any
# customization injected into those files risks a merge conflict whenever the
# spec changes nearby. Keeping the extensions here -- in a file APIMatic never
# generates -- means regeneration can never conflict with them.
#
# This file is required last (after the API classes and models are loaded), so
# the reopened classes below augment the already-defined generated classes.

require_relative 'http/http_call_back'

module UnivapayClientSdk
  # Injects an Idempotency-Key header into mutating requests if absent.
  class IdempotencyCallback < HttpCallBack
    def initialize(user_callback = nil)
      @user_callback = user_callback
      super()
    end

    def on_before_request(request)
      if request
        method = request.http_method.to_s.upcase
        if %w[POST PUT PATCH].include?(method)
          headers = request.headers || {}
          has_idempotency = headers.any? { |k, _| k.to_s.downcase == 'idempotency-key' }
          unless has_idempotency
            require 'securerandom'
            request.headers['Idempotency-Key'] = SecureRandom.uuid
          end
        end
      end
      @user_callback&.on_before_request(request)
    end

    def on_after_response(response)
      @user_callback&.on_after_response(response)
    end

    def method_missing(method_name, *args, &block)
      if @user_callback && @user_callback.respond_to?(method_name)
        @user_callback.send(method_name, *args, &block)
      else
        super
      end
    end

    def respond_to_missing?(method_name, include_private = false)
      (@user_callback && @user_callback.respond_to?(method_name, include_private)) || super
    end
  end

  # poll_* helpers, reopened onto the generated controller classes.
  class ChargesApi
    def poll_charge(store_id, id, max_attempts: 10)
      terminal_statuses = [
        ChargeStatus::SUCCESSFUL,
        ChargeStatus::FAILED,
        ChargeStatus::ERROR,
        ChargeStatus::CANCELED,
        ChargeStatus::AUTHORIZED,
        ChargeStatus::AWAITING
      ]
      attempts = 0
      while attempts < max_attempts
        response = get_charge(store_id, id, polling: true)
        if response && response.data && terminal_statuses.include?(response.data.status)
          return response
        end
        attempts += 1
      end
      get_charge(store_id, id, polling: true)
    end
  end

  class CancelsApi
    def poll_cancel(store_id, charge_id, id, max_attempts: 10)
      terminal_statuses = [
        CancelStatus::SUCCESSFUL,
        CancelStatus::FAILED,
        CancelStatus::ERROR
      ]
      attempts = 0
      while attempts < max_attempts
        response = get_cancel(store_id, charge_id, id, polling: true)
        if response && response.data && terminal_statuses.include?(response.data.status)
          return response
        end
        attempts += 1
      end
      get_cancel(store_id, charge_id, id, polling: true)
    end
  end

  class RefundsApi
    def poll_refund(store_id, charge_id, id, max_attempts: 10)
      terminal_statuses = [
        RefundStatus::SUCCESSFUL,
        RefundStatus::FAILED,
        RefundStatus::ERROR
      ]
      attempts = 0
      while attempts < max_attempts
        response = get_refund(store_id, charge_id, id, polling: true)
        if response && response.data && terminal_statuses.include?(response.data.status)
          return response
        end
        attempts += 1
      end
      get_refund(store_id, charge_id, id, polling: true)
    end
  end

  class SubscriptionsApi
    def poll_subscription(store_id, id, max_attempts: 10)
      attempts = 0
      while attempts < max_attempts
        response = get_subscription(store_id, id, polling: true)
        if response && response.data && response.data.status != SubscriptionStatus::UNVERIFIED
          return response
        end
        attempts += 1
      end
      get_subscription(store_id, id, polling: true)
    end
  end
  # ── App token (JWT) claim decoding ────────────────────────────────────────
  #
  # A UnivaPay app token JWT carries the context it was issued for. A
  # store-level token has both `merchant_id` and `store_id`; a merchant-level
  # token has only `merchant_id`.
  #
  # Decoding only reads the payload segment -- it does NOT verify the
  # signature, which is deliberate. The value is the caller's own credential,
  # already trusted by virtue of being configured on the client; nothing here
  # is an authorization decision. Never use these values to authenticate a
  # third party's token.
  module AppJwt
    # Matches the canonical 8-4-4-4-12 hexadecimal UUID form.
    UUID_PATTERN = /\A[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\z/i.freeze

    # Decodes the payload segment of a JWT without verifying its signature.
    #
    # @param jwt_token [String, nil] The JWT to decode.
    # @return [Hash, nil] The decoded claims, or nil unless the token is a
    #   well-formed three-segment JWT whose payload segment is base64url-encoded
    #   JSON describing an object.
    def self.decode_payload(jwt_token)
      return nil if jwt_token.nil? || !jwt_token.is_a?(String) || jwt_token.empty?

      segments = jwt_token.split('.', -1)
      return nil unless segments.length == 3

      begin
        # unpack1('m0') is strict base64 and needs no `base64` gem, which stopped
        # being a default gem in Ruby 3.4. It requires correct padding, so
        # translate base64url to base64 and pad first.
        base64 = segments[1].tr('-_', '+/')
        base64 += '=' * ((4 - (base64.length % 4)) % 4)
        payload = JSON.parse(base64.unpack1('m0'))
      rescue ArgumentError, JSON::ParserError
        return nil
      end
      payload.is_a?(Hash) ? payload : nil
    end

    # Reads a claim from a JWT payload and returns it only if it is a UUID.
    #
    # Anything else -- claim absent, nil, not a string, or a string that is not
    # a canonical UUID -- yields nil, so a caller never has to distinguish "not
    # set" from "could not decode".
    #
    # @param jwt_token [String, nil] The JWT to decode.
    # @param claim [String] Name of the claim to read.
    # @return [String, nil] The claim value as a UUID string, or nil.
    def self.read_uuid_claim(jwt_token, claim)
      payload = decode_payload(jwt_token)
      return nil if payload.nil?

      value = payload[claim]
      value.is_a?(String) && UUID_PATTERN.match?(value) ? value : nil
    end
  end

  # Reopened onto the generated client class to expose the app token's context.
  class Client
    # The merchant this client's app token was issued for, decoded from the
    # configured JWT.
    #
    # Both merchant-level and store-level app tokens carry a merchant, so this
    # is set for either kind of token.
    #
    # @return [String, nil] The merchant id as a UUID string, or nil if no JWT
    #   is configured or its `merchant_id` claim is absent or not a UUID.
    def get_current_merchant_id
      AppJwt.read_uuid_claim(jwt_token_or_nil, 'merchant_id')
    end

    # The store this client's app token was issued for, decoded from the
    # configured JWT.
    #
    # Only store-level app tokens are scoped to a store. A merchant-level token
    # carries no `store_id` claim, so this returns nil for one -- use `stores`
    # to list the merchant's stores instead.
    #
    # @return [String, nil] The store id as a UUID string, or nil if no JWT is
    #   configured or its `store_id` claim is absent or not a UUID.
    def get_current_store_id
      AppJwt.read_uuid_claim(jwt_token_or_nil, 'store_id')
    end

    private

    # The configured JWT, or nil when no credentials are set.
    def jwt_token_or_nil
      config.bearer_auth_credentials&.jwt_token
    end
  end

end
