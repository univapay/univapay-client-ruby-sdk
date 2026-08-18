# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # A single refund issued against the charge this row describes.
  class TransactionHistoryRefund < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier of the refund.
    # @return [UUID | String]
    attr_accessor :refund_id

    # Refunded amount, in the currency's minor unit.
    # @return [Integer]
    attr_accessor :amount

    # ISO-4217 currency code.
    # @return [String]
    attr_accessor :currency

    # Refunded amount, formatted per the currency's display scale.
    # @return [Float]
    attr_accessor :amount_formatted

    # Status of a single refund entry.
    # @return [TransactionHistoryRefundStatus]
    attr_accessor :status

    # Reason code for a refund.
    # @return [TransactionHistoryRefundReason]
    attr_accessor :reason

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['refund_id'] = 'refund_id'
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['amount_formatted'] = 'amount_formatted'
      @_hash['status'] = 'status'
      @_hash['reason'] = 'reason'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        refund_id
        amount
        currency
        amount_formatted
        status
        reason
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(refund_id: SKIP, amount: SKIP, currency: SKIP,
                   amount_formatted: SKIP, status: SKIP, reason: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @refund_id = refund_id unless refund_id == SKIP
      @amount = amount unless amount == SKIP
      @currency = currency unless currency == SKIP
      @amount_formatted = amount_formatted unless amount_formatted == SKIP
      @status = status unless status == SKIP
      @reason = reason unless reason == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      refund_id = hash.key?('refund_id') ? hash['refund_id'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      amount_formatted =
        hash.key?('amount_formatted') ? hash['amount_formatted'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      reason = hash.key?('reason') ? hash['reason'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TransactionHistoryRefund.new(refund_id: refund_id,
                                   amount: amount,
                                   currency: currency,
                                   amount_formatted: amount_formatted,
                                   status: status,
                                   reason: reason,
                                   additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} refund_id: #{@refund_id}, amount: #{@amount}, currency: #{@currency},"\
      " amount_formatted: #{@amount_formatted}, status: #{@status}, reason: #{@reason},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} refund_id: #{@refund_id.inspect}, amount: #{@amount.inspect}, currency:"\
      " #{@currency.inspect}, amount_formatted: #{@amount_formatted.inspect}, status:"\
      " #{@status.inspect}, reason: #{@reason.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
