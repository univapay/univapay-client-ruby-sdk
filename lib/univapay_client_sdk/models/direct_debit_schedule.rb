# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # The key dates for one debit cycle. Use these to work out whether the current
  # month's registration window is still open.
  class DirectDebitSchedule < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The date funds are pulled from consumer accounts (指定振替日).
    # @return [Date]
    attr_accessor :merchant_bank_account_transfer_date

    # The date by which the bank must receive the signed direct debit mandate
    # (振替依頼書到着期限).
    # @return [Date]
    attr_accessor :merchant_bank_account_registration_deadline

    # The last date transfers can be registered or edited for this cycle
    # (振替データアップロード期限). After this, transfers lock.
    # @return [Date]
    attr_accessor :merchant_bank_transfer_upload_deadline

    # The date transfer results are reflected on the platform (振替結果反映日).
    # @return [Date]
    attr_accessor :platform_result_registration_date

    # The date collected funds are paid out to the merchant (支払日).
    # @return [Date]
    attr_accessor :platform_scheduled_payout

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['merchant_bank_account_transfer_date'] =
        'merchant_bank_account_transfer_date'
      @_hash['merchant_bank_account_registration_deadline'] =
        'merchant_bank_account_registration_deadline'
      @_hash['merchant_bank_transfer_upload_deadline'] =
        'merchant_bank_transfer_upload_deadline'
      @_hash['platform_result_registration_date'] =
        'platform_result_registration_date'
      @_hash['platform_scheduled_payout'] = 'platform_scheduled_payout'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        merchant_bank_account_transfer_date
        merchant_bank_account_registration_deadline
        merchant_bank_transfer_upload_deadline
        platform_result_registration_date
        platform_scheduled_payout
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(merchant_bank_account_transfer_date: SKIP,
                   merchant_bank_account_registration_deadline: SKIP,
                   merchant_bank_transfer_upload_deadline: SKIP,
                   platform_result_registration_date: SKIP,
                   platform_scheduled_payout: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      unless merchant_bank_account_transfer_date == SKIP
        @merchant_bank_account_transfer_date =
          merchant_bank_account_transfer_date
      end
      unless merchant_bank_account_registration_deadline == SKIP
        @merchant_bank_account_registration_deadline =
          merchant_bank_account_registration_deadline
      end
      unless merchant_bank_transfer_upload_deadline == SKIP
        @merchant_bank_transfer_upload_deadline =
          merchant_bank_transfer_upload_deadline
      end
      unless platform_result_registration_date == SKIP
        @platform_result_registration_date =
          platform_result_registration_date
      end
      unless platform_scheduled_payout == SKIP
        @platform_scheduled_payout =
          platform_scheduled_payout
      end
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      merchant_bank_account_transfer_date =
        hash.key?('merchant_bank_account_transfer_date') ? hash['merchant_bank_account_transfer_date'] : SKIP
      merchant_bank_account_registration_deadline =
        hash.key?('merchant_bank_account_registration_deadline') ? hash['merchant_bank_account_registration_deadline'] : SKIP
      merchant_bank_transfer_upload_deadline =
        hash.key?('merchant_bank_transfer_upload_deadline') ? hash['merchant_bank_transfer_upload_deadline'] : SKIP
      platform_result_registration_date =
        hash.key?('platform_result_registration_date') ? hash['platform_result_registration_date'] : SKIP
      platform_scheduled_payout =
        hash.key?('platform_scheduled_payout') ? hash['platform_scheduled_payout'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      DirectDebitSchedule.new(merchant_bank_account_transfer_date: merchant_bank_account_transfer_date,
                              merchant_bank_account_registration_deadline: merchant_bank_account_registration_deadline,
                              merchant_bank_transfer_upload_deadline: merchant_bank_transfer_upload_deadline,
                              platform_result_registration_date: platform_result_registration_date,
                              platform_scheduled_payout: platform_scheduled_payout,
                              additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} merchant_bank_account_transfer_date:"\
      " #{@merchant_bank_account_transfer_date}, merchant_bank_account_registration_deadline:"\
      " #{@merchant_bank_account_registration_deadline}, merchant_bank_transfer_upload_deadline:"\
      " #{@merchant_bank_transfer_upload_deadline}, platform_result_registration_date:"\
      " #{@platform_result_registration_date}, platform_scheduled_payout:"\
      " #{@platform_scheduled_payout}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} merchant_bank_account_transfer_date:"\
      " #{@merchant_bank_account_transfer_date.inspect},"\
      ' merchant_bank_account_registration_deadline:'\
      " #{@merchant_bank_account_registration_deadline.inspect},"\
      ' merchant_bank_transfer_upload_deadline:'\
      " #{@merchant_bank_transfer_upload_deadline.inspect}, platform_result_registration_date:"\
      " #{@platform_result_registration_date.inspect}, platform_scheduled_payout:"\
      " #{@platform_scheduled_payout.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
