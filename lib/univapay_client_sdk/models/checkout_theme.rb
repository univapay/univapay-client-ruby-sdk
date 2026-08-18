# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Widget theme applied to checkout.
  class CheckoutTheme < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Hex colors applied to the checkout widget. Always resolves to the platform
    # defaults shown here when not customized — never `null`.
    # @return [CheckoutThemeColors]
    attr_accessor :colors

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['colors'] = 'colors'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        colors
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(colors: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @colors = colors unless colors == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      colors = CheckoutThemeColors.from_hash(hash['colors']) if hash['colors']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CheckoutTheme.new(colors: colors,
                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} colors: #{@colors}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} colors: #{@colors.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
