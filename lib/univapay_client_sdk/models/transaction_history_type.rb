# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Whether this row represents a charge or a refund.
  class TransactionHistoryType
    TRANSACTION_HISTORY_TYPE = [
      # TODO: Write general description for CHARGE
      CHARGE = 'charge'.freeze,

      # TODO: Write general description for REFUND
      REFUND = 'refund'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSACTION_HISTORY_TYPE.include?(value)
    end

    def self.from_value(value, default_value = CHARGE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'charge' then CHARGE
      when 'refund' then REFUND
      else
        default_value
      end
    end
  end
end
