# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Filterable token types for token listings. `one_time` tokens cannot be
  # filtered on and are excluded from this enum.
  class TransactionTokenListType
    TRANSACTION_TOKEN_LIST_TYPE = [
      # TODO: Write general description for SUBSCRIPTION
      SUBSCRIPTION = 'subscription'.freeze,

      # TODO: Write general description for RECURRING
      RECURRING = 'recurring'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSACTION_TOKEN_LIST_TYPE.include?(value)
    end

    def self.from_value(value, default_value = SUBSCRIPTION)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'subscription' then SUBSCRIPTION
      when 'recurring' then RECURRING
      else
        default_value
      end
    end
  end
end
