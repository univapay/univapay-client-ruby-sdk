# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # EC checkout feature toggles for hosted email receipts and product line
  # items.
  class CheckoutEcConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Email-related EC checkout settings.
    # @return [CheckoutEcEmailConfiguration]
    attr_accessor :ec_email

    # Product-related EC checkout settings.
    # @return [CheckoutEcProductsConfiguration]
    attr_accessor :ec_products

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ec_email'] = 'ec_email'
      @_hash['ec_products'] = 'ec_products'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        ec_email
        ec_products
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(ec_email: SKIP, ec_products: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @ec_email = ec_email unless ec_email == SKIP
      @ec_products = ec_products unless ec_products == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ec_email = CheckoutEcEmailConfiguration.from_hash(hash['ec_email']) if hash['ec_email']
      ec_products = CheckoutEcProductsConfiguration.from_hash(hash['ec_products']) if
        hash['ec_products']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CheckoutEcConfiguration.new(ec_email: ec_email,
                                  ec_products: ec_products,
                                  additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} ec_email: #{@ec_email}, ec_products: #{@ec_products},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} ec_email: #{@ec_email.inspect}, ec_products: #{@ec_products.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
