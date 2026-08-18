# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Response payload returned after deriving a deterministic customer ID.
  class CreateCustomerIdResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Deterministic UUID derived from the store and the supplied local
    # `customer_id`. Identical for repeated calls with the same inputs.
    # @return [UUID | String]
    attr_accessor :customer_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_id'] = 'customer_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(customer_id: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @customer_id = customer_id unless customer_id == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CreateCustomerIdResponse.new(customer_id: customer_id,
                                   additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} customer_id: #{@customer_id}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} customer_id: #{@customer_id.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
