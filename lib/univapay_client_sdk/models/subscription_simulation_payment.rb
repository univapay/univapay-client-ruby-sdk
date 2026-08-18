# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # A single scheduled payment produced by the subscription plan simulation.
  class SubscriptionSimulationPayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Scheduled due date for this simulated payment (YYYY-MM-DD).
    # @return [Date]
    attr_accessor :due_date

    # IANA timezone identifier used to resolve the due date.
    # @return [String]
    attr_accessor :zone_id

    # Amount to be charged on this cycle, in the smallest currency unit.
    # @return [Integer]
    attr_accessor :amount

    # ISO-4217 currency code.
    # @return [String]
    attr_accessor :currency

    # Always `false` for simulated payments — no real payment has been made.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_paid

    # Whether this is the final payment in the simulated schedule.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_last_payment

    # Always `null` for simulated payments — populated only once a real payment
    # settles.
    # @return [Date]
    attr_accessor :successful_payment_date

    # The status the subscription would transition to on this payment's due
    # date, if a termination is scheduled. `null` when no termination applies.
    # @return [TerminateWithStatus]
    attr_accessor :terminate_with_status

    # ISO-8601 Duration for the retry interval applied if this payment fails
    # (e.g., P5D). `null` if no retry interval is configured.
    # @return [String]
    attr_accessor :retry_interval

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['due_date'] = 'due_date'
      @_hash['zone_id'] = 'zone_id'
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['is_paid'] = 'is_paid'
      @_hash['is_last_payment'] = 'is_last_payment'
      @_hash['successful_payment_date'] = 'successful_payment_date'
      @_hash['terminate_with_status'] = 'terminate_with_status'
      @_hash['retry_interval'] = 'retry_interval'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        due_date
        zone_id
        amount
        currency
        is_paid
        is_last_payment
        successful_payment_date
        terminate_with_status
        retry_interval
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        successful_payment_date
        terminate_with_status
        retry_interval
      ]
    end

    def initialize(due_date: SKIP, zone_id: SKIP, amount: SKIP, currency: SKIP,
                   is_paid: SKIP, is_last_payment: SKIP,
                   successful_payment_date: SKIP, terminate_with_status: SKIP,
                   retry_interval: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @due_date = due_date unless due_date == SKIP
      @zone_id = zone_id unless zone_id == SKIP
      @amount = amount unless amount == SKIP
      @currency = currency unless currency == SKIP
      @is_paid = is_paid unless is_paid == SKIP
      @is_last_payment = is_last_payment unless is_last_payment == SKIP
      @successful_payment_date = successful_payment_date unless successful_payment_date == SKIP
      @terminate_with_status = terminate_with_status unless terminate_with_status == SKIP
      @retry_interval = retry_interval unless retry_interval == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      due_date = hash.key?('due_date') ? hash['due_date'] : SKIP
      zone_id = hash.key?('zone_id') ? hash['zone_id'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      is_paid = hash.key?('is_paid') ? hash['is_paid'] : SKIP
      is_last_payment =
        hash.key?('is_last_payment') ? hash['is_last_payment'] : SKIP
      successful_payment_date =
        hash.key?('successful_payment_date') ? hash['successful_payment_date'] : SKIP
      terminate_with_status =
        hash.key?('terminate_with_status') ? hash['terminate_with_status'] : SKIP
      retry_interval =
        hash.key?('retry_interval') ? hash['retry_interval'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionSimulationPayment.new(due_date: due_date,
                                        zone_id: zone_id,
                                        amount: amount,
                                        currency: currency,
                                        is_paid: is_paid,
                                        is_last_payment: is_last_payment,
                                        successful_payment_date: successful_payment_date,
                                        terminate_with_status: terminate_with_status,
                                        retry_interval: retry_interval,
                                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} due_date: #{@due_date}, zone_id: #{@zone_id}, amount: #{@amount}, currency:"\
      " #{@currency}, is_paid: #{@is_paid}, is_last_payment: #{@is_last_payment},"\
      " successful_payment_date: #{@successful_payment_date}, terminate_with_status:"\
      " #{@terminate_with_status}, retry_interval: #{@retry_interval}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} due_date: #{@due_date.inspect}, zone_id: #{@zone_id.inspect}, amount:"\
      " #{@amount.inspect}, currency: #{@currency.inspect}, is_paid: #{@is_paid.inspect},"\
      " is_last_payment: #{@is_last_payment.inspect}, successful_payment_date:"\
      " #{@successful_payment_date.inspect}, terminate_with_status:"\
      " #{@terminate_with_status.inspect}, retry_interval: #{@retry_interval.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
