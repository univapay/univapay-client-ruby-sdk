# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Event type discriminator — `token_created`, `token_updated`,
  # `token_three_d_s_updated`, `token_cvv_auth_updated`,
  # `token_cvv_auth_check_updated`, `token_replaced`, or
  # `recurring_token_deleted`.
  class TokenEvent
    TOKEN_EVENT = [
      # TODO: Write general description for TOKEN_CREATED
      TOKEN_CREATED = 'token_created'.freeze,

      # TODO: Write general description for TOKEN_UPDATED
      TOKEN_UPDATED = 'token_updated'.freeze,

      # TODO: Write general description for TOKEN_THREE_D_S_UPDATED
      TOKEN_THREE_D_S_UPDATED = 'token_three_d_s_updated'.freeze,

      # TODO: Write general description for TOKEN_CVV_AUTH_UPDATED
      TOKEN_CVV_AUTH_UPDATED = 'token_cvv_auth_updated'.freeze,

      # TODO: Write general description for TOKEN_CVV_AUTH_CHECK_UPDATED
      TOKEN_CVV_AUTH_CHECK_UPDATED = 'token_cvv_auth_check_updated'.freeze,

      # TODO: Write general description for TOKEN_REPLACED
      TOKEN_REPLACED = 'token_replaced'.freeze,

      # TODO: Write general description for RECURRING_TOKEN_DELETED
      RECURRING_TOKEN_DELETED = 'recurring_token_deleted'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TOKEN_EVENT.include?(value)
    end

    def self.from_value(value, default_value = TOKEN_CREATED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'token_created' then TOKEN_CREATED
      when 'token_updated' then TOKEN_UPDATED
      when 'token_three_d_s_updated' then TOKEN_THREE_D_S_UPDATED
      when 'token_cvv_auth_updated' then TOKEN_CVV_AUTH_UPDATED
      when 'token_cvv_auth_check_updated' then TOKEN_CVV_AUTH_CHECK_UPDATED
      when 'token_replaced' then TOKEN_REPLACED
      when 'recurring_token_deleted' then RECURRING_TOKEN_DELETED
      else
        default_value
      end
    end
  end
end
