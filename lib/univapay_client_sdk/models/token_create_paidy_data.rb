# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Create Paidy Data schema.
  class TokenCreatePaidyData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # One-time token issued by the Paidy SDK/widget on the client side.
    # @return [String]
    attr_accessor :paidy_token

    # Shipping address for a Paidy token. `zip` is required; the server
    # additionally requires at least one of `line1`, `line2`, `city`, or `state`
    # to be present (not enforceable at the schema level).
    # @return [TokenCreatePaidyDataShippingAddress]
    attr_accessor :shipping_address

    # Consumer phone number in Japanese format (e.g., '08012341234').
    # @return [String]
    attr_accessor :phone_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['paidy_token'] = 'paidy_token'
      @_hash['shipping_address'] = 'shipping_address'
      @_hash['phone_number'] = 'phone_number'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        phone_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(paidy_token:, shipping_address:, phone_number: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @paidy_token = paidy_token
      @shipping_address = shipping_address
      @phone_number = phone_number unless phone_number == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      paidy_token = hash.key?('paidy_token') ? hash['paidy_token'] : nil
      shipping_address = TokenCreatePaidyDataShippingAddress.from_hash(hash['shipping_address']) if
        hash['shipping_address']
      phone_number = hash.key?('phone_number') ? hash['phone_number'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenCreatePaidyData.new(paidy_token: paidy_token,
                               shipping_address: shipping_address,
                               phone_number: phone_number,
                               additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenCreatePaidyData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.paidy_token,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.shipping_address,
                                  ->(val) { TokenCreatePaidyDataShippingAddress.validate(val) },
                                  is_model_hash: true)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['paidy_token'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['shipping_address'],
                                ->(val) { TokenCreatePaidyDataShippingAddress.validate(val) },
                                is_model_hash: true)
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} paidy_token: #{@paidy_token}, shipping_address: #{@shipping_address},"\
      " phone_number: #{@phone_number}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} paidy_token: #{@paidy_token.inspect}, shipping_address:"\
      " #{@shipping_address.inspect}, phone_number: #{@phone_number.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
