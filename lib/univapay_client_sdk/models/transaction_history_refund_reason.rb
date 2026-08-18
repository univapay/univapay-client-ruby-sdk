# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Reason code for a refund.
  class TransactionHistoryRefundReason
    TRANSACTION_HISTORY_REFUND_REASON = [
      # TODO: Write general description for DUPLICATE
      DUPLICATE = 'duplicate'.freeze,

      # TODO: Write general description for FRAUD
      FRAUD = 'fraud'.freeze,

      # TODO: Write general description for CUSTOMER_REQUEST
      CUSTOMER_REQUEST = 'customer_request'.freeze,

      # TODO: Write general description for SYSTEM_FAILURE
      SYSTEM_FAILURE = 'system_failure'.freeze,

      # TODO: Write general description for CHARGEBACK
      CHARGEBACK = 'chargeback'.freeze,

      # TODO: Write general description for CHARGEBACK_FEE_EXEMPT
      CHARGEBACK_FEE_EXEMPT = 'chargeback_fee_exempt'.freeze,

      # TODO: Write general description for CHARGEBACK_REVERSE
      CHARGEBACK_REVERSE = 'chargeback_reverse'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSACTION_HISTORY_REFUND_REASON.include?(value)
    end

    def self.from_value(value, default_value = DUPLICATE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'duplicate' then DUPLICATE
      when 'fraud' then FRAUD
      when 'customer_request' then CUSTOMER_REQUEST
      when 'system_failure' then SYSTEM_FAILURE
      when 'chargeback' then CHARGEBACK
      when 'chargeback_fee_exempt' then CHARGEBACK_FEE_EXEMPT
      when 'chargeback_reverse' then CHARGEBACK_REVERSE
      else
        default_value
      end
    end
  end
end
