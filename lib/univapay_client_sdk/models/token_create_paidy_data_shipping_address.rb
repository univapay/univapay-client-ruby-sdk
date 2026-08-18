# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Shipping address for a Paidy token. `zip` is required; the server
  # additionally requires at least one of `line1`, `line2`, `city`, or `state`
  # to be present (not enforceable at the schema level).
  class TokenCreatePaidyDataShippingAddress < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Japanese postal code (e.g., '105-0011').
    # @return [String]
    attr_accessor :zip

    # Primary street address line.
    # @return [String]
    attr_accessor :line1

    # Secondary street address line.
    # @return [String]
    attr_accessor :line2

    # City or locality.
    # @return [String]
    attr_accessor :city

    # State or prefecture.
    # @return [String]
    attr_accessor :state

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['zip'] = 'zip'
      @_hash['line1'] = 'line1'
      @_hash['line2'] = 'line2'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        line1
        line2
        city
        state
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(zip:, line1: SKIP, line2: SKIP, city: SKIP, state: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @zip = zip
      @line1 = line1 unless line1 == SKIP
      @line2 = line2 unless line2 == SKIP
      @city = city unless city == SKIP
      @state = state unless state == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      zip = hash.key?('zip') ? hash['zip'] : nil
      line1 = hash.key?('line1') ? hash['line1'] : SKIP
      line2 = hash.key?('line2') ? hash['line2'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenCreatePaidyDataShippingAddress.new(zip: zip,
                                              line1: line1,
                                              line2: line2,
                                              city: city,
                                              state: state,
                                              additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenCreatePaidyDataShippingAddress | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.zip,
                                     ->(val) { val.instance_of? String })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['zip'],
                            ->(val) { val.instance_of? String })
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} zip: #{@zip}, line1: #{@line1}, line2: #{@line2}, city: #{@city}, state:"\
      " #{@state}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} zip: #{@zip.inspect}, line1: #{@line1.inspect}, line2: #{@line2.inspect},"\
      " city: #{@city.inspect}, state: #{@state.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
