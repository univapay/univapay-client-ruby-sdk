# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # A single scheduled pull of funds from a registered bank account. The bank
  # account details are copied onto the transfer at registration time, so later
  # edits to the account do not change past transfers.
  class DirectDebitBankTransfer < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier of a direct debit bank transfer (振替ID).
    # @return [String]
    attr_accessor :id

    # Identifier of the merchant in the legacy direct debit system.
    # @return [String]
    attr_accessor :legacy_store_id

    # The merchant that owns this transfer.
    # @return [UUID | String]
    attr_accessor :merchant_id

    # Unique identifier of a direct debit bank account (銀行口座ID).
    # @return [String]
    attr_accessor :bank_account_id

    # The merchant's own membership number for the consumer (会員番号).
    # Alphanumeric.
    # @return [String]
    attr_accessor :user_number

    # Four-digit code identifying the consumer's bank (銀行コード).
    # @return [String]
    attr_accessor :bank_code

    # Bank name in half-width katakana (銀行名).
    # @return [String]
    attr_accessor :bank_name

    # Three-digit code identifying the bank branch (支店コード).
    # @return [String]
    attr_accessor :branch_code

    # Deposit account type (預金種類) — `regular` (普通), `current` (当座), `savings`
    # (貯蓄) or `others` (その他).
    # @return [DirectDebitBankAccountType]
    attr_accessor :bank_account_type

    # Account holder name (口座名義), in half-width katakana. Full-width characters
    # are rejected by the bank.
    # @return [String]
    attr_accessor :bank_account_name

    # Seven-digit account number (口座番号).
    # @return [String]
    attr_accessor :bank_account_number

    # Transfer amount in JPY. Must be a positive, non-zero whole number.
    # @return [Integer]
    attr_accessor :amount

    # Monthly debit cycle — funds are pulled on either the 14th or the 27th.
    # @return [DirectDebitDebitDate]
    attr_accessor :debit_date

    # The actual business day on which funds are pulled (計算された振替日), derived from
    # the debit cycle.
    # @return [Date]
    attr_accessor :calculated_debit_date

    # Whether the transfer can still be edited. Transfers are `unlocked` until
    # the upload deadline for their debit cycle passes, after which they are
    # `locked` and can no longer be changed or deleted.
    # @return [DirectDebitBankTransferLock]
    attr_accessor :lock

    # Transfer state. `awaiting` until the bank reports back, then `successful`
    # or `failed`. Results are reflected days after the debit date, not
    # immediately.
    # @return [DirectDebitBankTransferStatus]
    attr_accessor :status

    # Failure reason, or null while the transfer is awaiting a result or has
    # succeeded.
    # @return [DirectDebitBankTransferError]
    attr_accessor :error

    # Timestamp when the resource was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Timestamp when the resource was last updated.
    # @return [DateTime]
    attr_accessor :updated_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['legacy_store_id'] = 'legacy_store_id'
      @_hash['merchant_id'] = 'merchant_id'
      @_hash['bank_account_id'] = 'bank_account_id'
      @_hash['user_number'] = 'user_number'
      @_hash['bank_code'] = 'bank_code'
      @_hash['bank_name'] = 'bank_name'
      @_hash['branch_code'] = 'branch_code'
      @_hash['bank_account_type'] = 'bank_account_type'
      @_hash['bank_account_name'] = 'bank_account_name'
      @_hash['bank_account_number'] = 'bank_account_number'
      @_hash['amount'] = 'amount'
      @_hash['debit_date'] = 'debit_date'
      @_hash['calculated_debit_date'] = 'calculated_debit_date'
      @_hash['lock'] = 'lock'
      @_hash['status'] = 'status'
      @_hash['error'] = 'error'
      @_hash['created_on'] = 'created_on'
      @_hash['updated_on'] = 'updated_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        legacy_store_id
        merchant_id
        bank_account_id
        user_number
        bank_code
        bank_name
        branch_code
        bank_account_type
        bank_account_name
        bank_account_number
        amount
        debit_date
        calculated_debit_date
        lock
        status
        error
        created_on
        updated_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        error
      ]
    end

    def initialize(id: SKIP, legacy_store_id: SKIP, merchant_id: SKIP,
                   bank_account_id: SKIP, user_number: SKIP, bank_code: SKIP,
                   bank_name: SKIP, branch_code: SKIP, bank_account_type: SKIP,
                   bank_account_name: SKIP, bank_account_number: SKIP,
                   amount: SKIP, debit_date: SKIP, calculated_debit_date: SKIP,
                   lock: SKIP, status: SKIP, error: SKIP, created_on: SKIP,
                   updated_on: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @legacy_store_id = legacy_store_id unless legacy_store_id == SKIP
      @merchant_id = merchant_id unless merchant_id == SKIP
      @bank_account_id = bank_account_id unless bank_account_id == SKIP
      @user_number = user_number unless user_number == SKIP
      @bank_code = bank_code unless bank_code == SKIP
      @bank_name = bank_name unless bank_name == SKIP
      @branch_code = branch_code unless branch_code == SKIP
      @bank_account_type = bank_account_type unless bank_account_type == SKIP
      @bank_account_name = bank_account_name unless bank_account_name == SKIP
      @bank_account_number = bank_account_number unless bank_account_number == SKIP
      @amount = amount unless amount == SKIP
      @debit_date = debit_date unless debit_date == SKIP
      @calculated_debit_date = calculated_debit_date unless calculated_debit_date == SKIP
      @lock = lock unless lock == SKIP
      @status = status unless status == SKIP
      @error = error unless error == SKIP
      @created_on = created_on unless created_on == SKIP
      @updated_on = updated_on unless updated_on == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      legacy_store_id =
        hash.key?('legacy_store_id') ? hash['legacy_store_id'] : SKIP
      merchant_id = hash.key?('merchant_id') ? hash['merchant_id'] : SKIP
      bank_account_id =
        hash.key?('bank_account_id') ? hash['bank_account_id'] : SKIP
      user_number = hash.key?('user_number') ? hash['user_number'] : SKIP
      bank_code = hash.key?('bank_code') ? hash['bank_code'] : SKIP
      bank_name = hash.key?('bank_name') ? hash['bank_name'] : SKIP
      branch_code = hash.key?('branch_code') ? hash['branch_code'] : SKIP
      bank_account_type =
        hash.key?('bank_account_type') ? hash['bank_account_type'] : SKIP
      bank_account_name =
        hash.key?('bank_account_name') ? hash['bank_account_name'] : SKIP
      bank_account_number =
        hash.key?('bank_account_number') ? hash['bank_account_number'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      debit_date = hash.key?('debit_date') ? hash['debit_date'] : SKIP
      calculated_debit_date =
        hash.key?('calculated_debit_date') ? hash['calculated_debit_date'] : SKIP
      lock = hash.key?('lock') ? hash['lock'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      error = hash.key?('error') ? hash['error'] : SKIP
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end
      updated_on = if hash.key?('updated_on')
                     (DateTimeHelper.from_rfc3339(hash['updated_on']) if hash['updated_on'])
                   else
                     SKIP
                   end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      DirectDebitBankTransfer.new(id: id,
                                  legacy_store_id: legacy_store_id,
                                  merchant_id: merchant_id,
                                  bank_account_id: bank_account_id,
                                  user_number: user_number,
                                  bank_code: bank_code,
                                  bank_name: bank_name,
                                  branch_code: branch_code,
                                  bank_account_type: bank_account_type,
                                  bank_account_name: bank_account_name,
                                  bank_account_number: bank_account_number,
                                  amount: amount,
                                  debit_date: debit_date,
                                  calculated_debit_date: calculated_debit_date,
                                  lock: lock,
                                  status: status,
                                  error: error,
                                  created_on: created_on,
                                  updated_on: updated_on,
                                  additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    def to_custom_updated_on
      DateTimeHelper.to_rfc3339(updated_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, legacy_store_id: #{@legacy_store_id}, merchant_id:"\
      " #{@merchant_id}, bank_account_id: #{@bank_account_id}, user_number: #{@user_number},"\
      " bank_code: #{@bank_code}, bank_name: #{@bank_name}, branch_code: #{@branch_code},"\
      " bank_account_type: #{@bank_account_type}, bank_account_name: #{@bank_account_name},"\
      " bank_account_number: #{@bank_account_number}, amount: #{@amount}, debit_date:"\
      " #{@debit_date}, calculated_debit_date: #{@calculated_debit_date}, lock: #{@lock}, status:"\
      " #{@status}, error: #{@error}, created_on: #{@created_on}, updated_on: #{@updated_on},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, legacy_store_id: #{@legacy_store_id.inspect},"\
      " merchant_id: #{@merchant_id.inspect}, bank_account_id: #{@bank_account_id.inspect},"\
      " user_number: #{@user_number.inspect}, bank_code: #{@bank_code.inspect}, bank_name:"\
      " #{@bank_name.inspect}, branch_code: #{@branch_code.inspect}, bank_account_type:"\
      " #{@bank_account_type.inspect}, bank_account_name: #{@bank_account_name.inspect},"\
      " bank_account_number: #{@bank_account_number.inspect}, amount: #{@amount.inspect},"\
      " debit_date: #{@debit_date.inspect}, calculated_debit_date:"\
      " #{@calculated_debit_date.inspect}, lock: #{@lock.inspect}, status: #{@status.inspect},"\
      " error: #{@error.inspect}, created_on: #{@created_on.inspect}, updated_on:"\
      " #{@updated_on.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
