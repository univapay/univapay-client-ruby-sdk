# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Transfer state. `awaiting` until the bank reports back, then `successful` or
  # `failed`. Results are reflected days after the debit date, not immediately.
  class DirectDebitBankTransferStatus
    DIRECT_DEBIT_BANK_TRANSFER_STATUS = [
      # TODO: Write general description for AWAITING
      AWAITING = 'awaiting'.freeze,

      # TODO: Write general description for SUCCESSFUL
      SUCCESSFUL = 'successful'.freeze,

      # TODO: Write general description for FAILED
      FAILED = 'failed'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DIRECT_DEBIT_BANK_TRANSFER_STATUS.include?(value)
    end

    def self.from_value(value, default_value = AWAITING)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'awaiting' then AWAITING
      when 'successful' then SUCCESSFUL
      when 'failed' then FAILED
      else
        default_value
      end
    end
  end
end
