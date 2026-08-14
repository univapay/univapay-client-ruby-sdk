# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request payload for registering a consumer bank account for direct debit.
  class DirectDebitBankAccountCreateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

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

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['user_number'] = 'user_number'
      @_hash['bank_code'] = 'bank_code'
      @_hash['bank_name'] = 'bank_name'
      @_hash['branch_code'] = 'branch_code'
      @_hash['bank_account_type'] = 'bank_account_type'
      @_hash['bank_account_name'] = 'bank_account_name'
      @_hash['bank_account_number'] = 'bank_account_number'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(user_number:, bank_code:, bank_name:, branch_code:,
                   bank_account_type:, bank_account_name:, bank_account_number:,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @user_number = user_number
      @bank_code = bank_code
      @bank_name = bank_name
      @branch_code = branch_code
      @bank_account_type = bank_account_type
      @bank_account_name = bank_account_name
      @bank_account_number = bank_account_number
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      user_number = hash.key?('user_number') ? hash['user_number'] : nil
      bank_code = hash.key?('bank_code') ? hash['bank_code'] : nil
      bank_name = hash.key?('bank_name') ? hash['bank_name'] : nil
      branch_code = hash.key?('branch_code') ? hash['branch_code'] : nil
      bank_account_type =
        hash.key?('bank_account_type') ? hash['bank_account_type'] : nil
      bank_account_name =
        hash.key?('bank_account_name') ? hash['bank_account_name'] : nil
      bank_account_number =
        hash.key?('bank_account_number') ? hash['bank_account_number'] : nil

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      DirectDebitBankAccountCreateRequest.new(user_number: user_number,
                                              bank_code: bank_code,
                                              bank_name: bank_name,
                                              branch_code: branch_code,
                                              bank_account_type: bank_account_type,
                                              bank_account_name: bank_account_name,
                                              bank_account_number: bank_account_number,
                                              additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} user_number: #{@user_number}, bank_code: #{@bank_code}, bank_name:"\
      " #{@bank_name}, branch_code: #{@branch_code}, bank_account_type: #{@bank_account_type},"\
      " bank_account_name: #{@bank_account_name}, bank_account_number: #{@bank_account_number},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} user_number: #{@user_number.inspect}, bank_code: #{@bank_code.inspect},"\
      " bank_name: #{@bank_name.inspect}, branch_code: #{@branch_code.inspect}, bank_account_type:"\
      " #{@bank_account_type.inspect}, bank_account_name: #{@bank_account_name.inspect},"\
      " bank_account_number: #{@bank_account_number.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
