# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Deposit-matching policy applied to bank transfer payments.
  class CheckoutBankTransferMatchAmount
    CHECKOUT_BANK_TRANSFER_MATCH_AMOUNT = [
      # TODO: Write general description for EXACT
      EXACT = 'exact'.freeze,

      # TODO: Write general description for MAXIMUM
      MAXIMUM = 'maximum'.freeze,

      # TODO: Write general description for MINIMUM
      MINIMUM = 'minimum'.freeze,

      # TODO: Write general description for DISABLED
      DISABLED = 'disabled'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CHECKOUT_BANK_TRANSFER_MATCH_AMOUNT.include?(value)
    end

    def self.from_value(value, default_value = EXACT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'exact' then EXACT
      when 'maximum' then MAXIMUM
      when 'minimum' then MINIMUM
      when 'disabled' then DISABLED
      else
        default_value
      end
    end
  end
end
