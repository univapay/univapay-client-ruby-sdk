# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Whether the transfer can still be edited. Transfers are `unlocked` until the
  # upload deadline for their debit cycle passes, after which they are `locked`
  # and can no longer be changed or deleted.
  class DirectDebitBankTransferLock
    DIRECT_DEBIT_BANK_TRANSFER_LOCK = [
      # TODO: Write general description for UNLOCKED
      UNLOCKED = 'unlocked'.freeze,

      # TODO: Write general description for LOCKED
      LOCKED = 'locked'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DIRECT_DEBIT_BANK_TRANSFER_LOCK.include?(value)
    end

    def self.from_value(value, default_value = UNLOCKED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'unlocked' then UNLOCKED
      when 'locked' then LOCKED
      else
        default_value
      end
    end
  end
end
