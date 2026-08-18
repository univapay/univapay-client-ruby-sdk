# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Time-of-day override applied when calculating expirations, shared by
  # convenience-store and bank-transfer configuration.
  class ExpirationTimeShift < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # ISO-8601 offset time (HH:mm:ssXXX) that overrides the expiration cutoff.
    # Omitted entirely when no override is configured.
    # @return [String]
    attr_accessor :value

    # Whether the time-of-day override is applied.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['value'] = 'value'
      @_hash['enabled'] = 'enabled'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        value
        enabled
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(value: SKIP, enabled: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @value = value unless value == SKIP
      @enabled = enabled unless enabled == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      value = hash.key?('value') ? hash['value'] : SKIP
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      ExpirationTimeShift.new(value: value,
                              enabled: enabled,
                              additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} value: #{@value}, enabled: #{@enabled}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} value: #{@value.inspect}, enabled: #{@enabled.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
