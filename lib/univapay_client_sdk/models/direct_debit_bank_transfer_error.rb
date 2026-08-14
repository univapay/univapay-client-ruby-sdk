# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Reason a transfer failed, as reported by the bank. | Value | Meaning | |
  # :--- | :--- | | `insufficient_funds` | The account did not hold enough money
  # on the debit date. | | `no_deposit_transaction` | The account exists but has
  # no deposit activity. | | `transfer_stopped_by_depositor` | The consumer
  # instructed their bank to stop the debit. | | `no_account_transfer_request` |
  # No valid direct debit mandate is on file for the account. | |
  # `transfer_stopped_by_trustee` | The collecting bank stopped the debit. | |
  # `other_error` | The bank reported a failure outside the categories above. |
  # | `unknown_error` | The failure reason could not be determined. |
  class DirectDebitBankTransferError
    DIRECT_DEBIT_BANK_TRANSFER_ERROR = [
      # TODO: Write general description for INSUFFICIENT_FUNDS
      INSUFFICIENT_FUNDS = 'insufficient_funds'.freeze,

      # TODO: Write general description for NO_DEPOSIT_TRANSACTION
      NO_DEPOSIT_TRANSACTION = 'no_deposit_transaction'.freeze,

      # TODO: Write general description for TRANSFER_STOPPED_BY_DEPOSITOR
      TRANSFER_STOPPED_BY_DEPOSITOR = 'transfer_stopped_by_depositor'.freeze,

      # TODO: Write general description for NO_ACCOUNT_TRANSFER_REQUEST
      NO_ACCOUNT_TRANSFER_REQUEST = 'no_account_transfer_request'.freeze,

      # TODO: Write general description for TRANSFER_STOPPED_BY_TRUSTEE
      TRANSFER_STOPPED_BY_TRUSTEE = 'transfer_stopped_by_trustee'.freeze,

      # TODO: Write general description for OTHER_ERROR
      OTHER_ERROR = 'other_error'.freeze,

      # TODO: Write general description for UNKNOWN_ERROR
      UNKNOWN_ERROR = 'unknown_error'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DIRECT_DEBIT_BANK_TRANSFER_ERROR.include?(value)
    end

    def self.from_value(value, default_value = INSUFFICIENT_FUNDS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'insufficient_funds' then INSUFFICIENT_FUNDS
      when 'no_deposit_transaction' then NO_DEPOSIT_TRANSACTION
      when 'transfer_stopped_by_depositor' then TRANSFER_STOPPED_BY_DEPOSITOR
      when 'no_account_transfer_request' then NO_ACCOUNT_TRANSFER_REQUEST
      when 'transfer_stopped_by_trustee' then TRANSFER_STOPPED_BY_TRUSTEE
      when 'other_error' then OTHER_ERROR
      when 'unknown_error' then UNKNOWN_ERROR
      else
        default_value
      end
    end
  end
end
