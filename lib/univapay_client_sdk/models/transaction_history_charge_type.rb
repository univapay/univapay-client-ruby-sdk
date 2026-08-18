# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Whether the underlying charge was a normal charge or a CVV authorization.
  class TransactionHistoryChargeType
    TRANSACTION_HISTORY_CHARGE_TYPE = [
      # TODO: Write general description for NORMAL
      NORMAL = 'normal'.freeze,

      # TODO: Write general description for CVV_AUTH
      CVV_AUTH = 'cvv_auth'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSACTION_HISTORY_CHARGE_TYPE.include?(value)
    end

    def self.from_value(value, default_value = NORMAL)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'normal' then NORMAL
      when 'cvv_auth' then CVV_AUTH
      else
        default_value
      end
    end
  end
end
