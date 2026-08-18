# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Response Qr Merchant Data schema.
  class TokenResponseQrMerchantData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # QR code payload to be rendered by the consumer (content varies by brand —
    # may be a URL or an opaque code). Some brands return an image URL; others
    # (e.g. convenience-store QR brands) return an opaque numeric code with no
    # URL structure. Populated asynchronously shortly after token/charge
    # creation — `null` until then.
    # @return [String]
    attr_accessor :qr_image_url

    # The QR-MPM brand this code was generated for.
    # @return [String]
    attr_accessor :brand

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['qr_image_url'] = 'qr_image_url'
      @_hash['brand'] = 'brand'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        brand
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        qr_image_url
        brand
      ]
    end

    def initialize(qr_image_url:, brand: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @qr_image_url = qr_image_url
      @brand = brand unless brand == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      qr_image_url = hash.key?('qr_image_url') ? hash['qr_image_url'] : nil
      brand = hash.key?('brand') ? hash['brand'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenResponseQrMerchantData.new(qr_image_url: qr_image_url,
                                      brand: brand,
                                      additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenResponseQrMerchantData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.qr_image_url,
                                     ->(val) { val.instance_of? String })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['qr_image_url'],
                            ->(val) { val.instance_of? String })
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} qr_image_url: #{@qr_image_url}, brand: #{@brand}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} qr_image_url: #{@qr_image_url.inspect}, brand: #{@brand.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
