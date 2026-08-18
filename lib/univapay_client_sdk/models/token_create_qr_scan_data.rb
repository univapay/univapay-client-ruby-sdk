# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Create Qr Scan Data schema.
  class TokenCreateQrScanData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The QR/barcode payload scanned from the customer's payment app
    # (Customer-Presented Mode). Only valid when `type` is `one_time` — the
    # server rejects `subscription`/`recurring` token types for this payment
    # type.
    # @return [String]
    attr_accessor :scanned_qr

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['scanned_qr'] = 'scanned_qr'
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

    def initialize(scanned_qr:, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @scanned_qr = scanned_qr
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      scanned_qr = hash.key?('scanned_qr') ? hash['scanned_qr'] : nil

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenCreateQrScanData.new(scanned_qr: scanned_qr,
                                additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenCreateQrScanData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.scanned_qr,
                                     ->(val) { val.instance_of? String })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['scanned_qr'],
                            ->(val) { val.instance_of? String })
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} scanned_qr: #{@scanned_qr}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} scanned_qr: #{@scanned_qr.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
