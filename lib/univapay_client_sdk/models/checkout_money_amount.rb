# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Monetary amount used by checkout configuration limits and thresholds.
  class CheckoutMoneyAmount < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Amount in the smallest unit of the currency.
    # @return [Integer]
    attr_accessor :amount

    # Amount formatted for display.
    # @return [Float]
    attr_accessor :amount_formatted

    # ISO-4217 currency code.
    # @return [String]
    attr_accessor :currency

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['amount_formatted'] = 'amount_formatted'
      @_hash['currency'] = 'currency'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount
        amount_formatted
        currency
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount: SKIP, amount_formatted: SKIP, currency: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @amount = amount unless amount == SKIP
      @amount_formatted = amount_formatted unless amount_formatted == SKIP
      @currency = currency unless currency == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      amount_formatted =
        hash.key?('amount_formatted') ? hash['amount_formatted'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CheckoutMoneyAmount.new(amount: amount,
                              amount_formatted: amount_formatted,
                              currency: currency,
                              additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, amount_formatted: #{@amount_formatted}, currency:"\
      " #{@currency}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, amount_formatted: #{@amount_formatted.inspect},"\
      " currency: #{@currency.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
