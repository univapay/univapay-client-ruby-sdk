# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Bank account state (有効・無効・登録失敗). Only an `active` account can have transfers
  # registered against it. `registration_failed` means the bank rejected the
  # account details.
  class DirectDebitBankAccountStatus
    DIRECT_DEBIT_BANK_ACCOUNT_STATUS = [
      # TODO: Write general description for ACTIVE
      ACTIVE = 'active'.freeze,

      # TODO: Write general description for INACTIVE
      INACTIVE = 'inactive'.freeze,

      # TODO: Write general description for REGISTRATION_FAILED
      REGISTRATION_FAILED = 'registration_failed'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DIRECT_DEBIT_BANK_ACCOUNT_STATUS.include?(value)
    end

    def self.from_value(value, default_value = ACTIVE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'active' then ACTIVE
      when 'inactive' then INACTIVE
      when 'registration_failed' then REGISTRATION_FAILED
      else
        default_value
      end
    end
  end
end
