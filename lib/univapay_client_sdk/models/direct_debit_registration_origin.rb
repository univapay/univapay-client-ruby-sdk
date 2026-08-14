# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Where the bank account was registered from — `merchant_console` for the
  # merchant dashboard, `anywhere` otherwise.
  class DirectDebitRegistrationOrigin
    DIRECT_DEBIT_REGISTRATION_ORIGIN = [
      # TODO: Write general description for ANYWHERE
      ANYWHERE = 'anywhere'.freeze,

      # TODO: Write general description for MERCHANT_CONSOLE
      MERCHANT_CONSOLE = 'merchant_console'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DIRECT_DEBIT_REGISTRATION_ORIGIN.include?(value)
    end

    def self.from_value(value, default_value = ANYWHERE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'anywhere' then ANYWHERE
      when 'merchant_console' then MERCHANT_CONSOLE
      else
        default_value
      end
    end
  end
end
