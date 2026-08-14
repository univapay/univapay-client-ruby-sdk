# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Monthly debit cycle — funds are pulled on either the 14th or the 27th.
  class DirectDebitDebitDate
    DIRECT_DEBIT_DEBIT_DATE = [
      # TODO: Write general description for FOURTEEN
      FOURTEEN = 'fourteen'.freeze,

      # TODO: Write general description for TWENTY_SEVEN
      TWENTY_SEVEN = 'twenty_seven'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DIRECT_DEBIT_DEBIT_DATE.include?(value)
    end

    def self.from_value(value, default_value = FOURTEEN)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'fourteen' then FOURTEEN
      when 'twenty_seven' then TWENTY_SEVEN
      else
        default_value
      end
    end
  end
end
