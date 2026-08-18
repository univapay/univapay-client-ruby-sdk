# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Per-card spending limit enforced on card payments, evaluated over a rolling
  # duration.
  class CardLimit < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Maximum amount a single card may charge within `duration`.
    # @return [Integer]
    attr_accessor :amount

    # ISO-4217 currency code.
    # @return [String]
    attr_accessor :currency

    # Limit amount formatted for display.
    # @return [Float]
    attr_accessor :amount_formatted

    # ISO-8601 period over which the limit is evaluated (e.g. P1M).
    # @return [String]
    attr_accessor :duration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['amount_formatted'] = 'amount_formatted'
      @_hash['duration'] = 'duration'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount
        currency
        amount_formatted
        duration
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount: SKIP, currency: SKIP, amount_formatted: SKIP,
                   duration: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @amount = amount unless amount == SKIP
      @currency = currency unless currency == SKIP
      @amount_formatted = amount_formatted unless amount_formatted == SKIP
      @duration = duration unless duration == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      amount_formatted =
        hash.key?('amount_formatted') ? hash['amount_formatted'] : SKIP
      duration = hash.key?('duration') ? hash['duration'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CardLimit.new(amount: amount,
                    currency: currency,
                    amount_formatted: amount_formatted,
                    duration: duration,
                    additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, currency: #{@currency}, amount_formatted:"\
      " #{@amount_formatted}, duration: #{@duration}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, currency: #{@currency.inspect},"\
      " amount_formatted: #{@amount_formatted.inspect}, duration: #{@duration.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
