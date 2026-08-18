# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Response Paidy Data schema.
  class TokenResponsePaidyData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # One-time token issued by the Paidy SDK/widget on the client side.
    # @return [String]
    attr_accessor :paidy_token

    # Consumer phone number in Japanese format.
    # @return [String]
    attr_accessor :phone_number

    # Shipping address returned for a Paidy token.
    # @return [TokenResponsePaidyDataShippingAddress]
    attr_accessor :shipping_address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['paidy_token'] = 'paidy_token'
      @_hash['phone_number'] = 'phone_number'
      @_hash['shipping_address'] = 'shipping_address'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        phone_number
        shipping_address
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        phone_number
      ]
    end

    def initialize(paidy_token:, phone_number: SKIP, shipping_address: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @paidy_token = paidy_token
      @phone_number = phone_number unless phone_number == SKIP
      @shipping_address = shipping_address unless shipping_address == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      paidy_token = hash.key?('paidy_token') ? hash['paidy_token'] : nil
      phone_number = hash.key?('phone_number') ? hash['phone_number'] : SKIP
      if hash['shipping_address']
        shipping_address = TokenResponsePaidyDataShippingAddress.from_hash(hash['shipping_address'])
      end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenResponsePaidyData.new(paidy_token: paidy_token,
                                 phone_number: phone_number,
                                 shipping_address: shipping_address,
                                 additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenResponsePaidyData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.paidy_token,
                                     ->(val) { val.instance_of? String })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['paidy_token'],
                            ->(val) { val.instance_of? String })
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} paidy_token: #{@paidy_token}, phone_number: #{@phone_number},"\
      " shipping_address: #{@shipping_address}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} paidy_token: #{@paidy_token.inspect}, phone_number:"\
      " #{@phone_number.inspect}, shipping_address: #{@shipping_address.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
