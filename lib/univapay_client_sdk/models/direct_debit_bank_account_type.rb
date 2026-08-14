# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Deposit account type (預金種類) — `regular` (普通), `current` (当座), `savings` (貯蓄)
  # or `others` (その他).
  class DirectDebitBankAccountType
    DIRECT_DEBIT_BANK_ACCOUNT_TYPE = [
      # TODO: Write general description for REGULAR
      REGULAR = 'regular'.freeze,

      # TODO: Write general description for CURRENT
      CURRENT = 'current'.freeze,

      # TODO: Write general description for SAVINGS
      SAVINGS = 'savings'.freeze,

      # TODO: Write general description for OTHERS
      OTHERS = 'others'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DIRECT_DEBIT_BANK_ACCOUNT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = REGULAR)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'regular' then REGULAR
      when 'current' then CURRENT
      when 'savings' then SAVINGS
      when 'others' then OTHERS
      else
        default_value
      end
    end
  end
end
