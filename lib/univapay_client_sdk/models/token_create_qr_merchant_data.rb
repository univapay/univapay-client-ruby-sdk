# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Create Qr Merchant Data schema.
  class TokenCreateQrMerchantData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The QR-MPM brand to generate a merchant-presented-mode code for. Validated
    # strictly server-side against a supported brand list. Common values include
    # `rakuten_pay_merchant`, `alipay_merchant_qr`, `pay_pay_merchant`,
    # `d_barai_mpm`, `we_chat_mpm`. Treat this as an open value set — the server
    # may add brands over time.
    # @return [String]
    attr_accessor :brand

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand'] = 'brand'
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

    def initialize(brand:, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @brand = brand
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand = hash.key?('brand') ? hash['brand'] : nil

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenCreateQrMerchantData.new(brand: brand,
                                    additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenCreateQrMerchantData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.brand,
                                     ->(val) { val.instance_of? String })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['brand'],
                            ->(val) { val.instance_of? String })
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} brand: #{@brand}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} brand: #{@brand.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
