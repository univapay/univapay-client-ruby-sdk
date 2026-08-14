# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # The merchant's effective direct debit configuration.
  class DirectDebitMerchantConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Identifier of the merchant in the legacy direct debit system.
    # @return [String]
    attr_accessor :legacy_id

    # Whether direct debit is enabled for this merchant.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Monthly debit cycle — funds are pulled on either the 14th or the 27th.
    # @return [DirectDebitDebitDate]
    attr_accessor :debit_date

    # Consignor code (委託者コード) assigned by the collecting bank.
    # @return [String]
    attr_accessor :consignor_code

    # Transfer classification code (区分) agreed with the collecting bank.
    # @return [String]
    attr_accessor :classifier

    # Name printed on the consumer's bank statement (印字名), in half-width
    # katakana.
    # @return [String]
    attr_accessor :signature

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['legacy_id'] = 'legacy_id'
      @_hash['enabled'] = 'enabled'
      @_hash['debit_date'] = 'debit_date'
      @_hash['consignor_code'] = 'consignor_code'
      @_hash['classifier'] = 'classifier'
      @_hash['signature'] = 'signature'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        legacy_id
        enabled
        debit_date
        consignor_code
        classifier
        signature
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(legacy_id: SKIP, enabled: SKIP, debit_date: SKIP,
                   consignor_code: SKIP, classifier: SKIP, signature: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @legacy_id = legacy_id unless legacy_id == SKIP
      @enabled = enabled unless enabled == SKIP
      @debit_date = debit_date unless debit_date == SKIP
      @consignor_code = consignor_code unless consignor_code == SKIP
      @classifier = classifier unless classifier == SKIP
      @signature = signature unless signature == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      legacy_id = hash.key?('legacy_id') ? hash['legacy_id'] : SKIP
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      debit_date = hash.key?('debit_date') ? hash['debit_date'] : SKIP
      consignor_code =
        hash.key?('consignor_code') ? hash['consignor_code'] : SKIP
      classifier = hash.key?('classifier') ? hash['classifier'] : SKIP
      signature = hash.key?('signature') ? hash['signature'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      DirectDebitMerchantConfiguration.new(legacy_id: legacy_id,
                                           enabled: enabled,
                                           debit_date: debit_date,
                                           consignor_code: consignor_code,
                                           classifier: classifier,
                                           signature: signature,
                                           additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} legacy_id: #{@legacy_id}, enabled: #{@enabled}, debit_date: #{@debit_date},"\
      " consignor_code: #{@consignor_code}, classifier: #{@classifier}, signature: #{@signature},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} legacy_id: #{@legacy_id.inspect}, enabled: #{@enabled.inspect}, debit_date:"\
      " #{@debit_date.inspect}, consignor_code: #{@consignor_code.inspect}, classifier:"\
      " #{@classifier.inspect}, signature: #{@signature.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
