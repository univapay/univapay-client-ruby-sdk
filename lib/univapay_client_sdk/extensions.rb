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
end
