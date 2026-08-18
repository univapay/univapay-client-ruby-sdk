# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request payload for simulating a subscription payment schedule without
  # creating a live subscription. Specify exactly one of 'period' or
  # 'cyclical_period' to define the billing frequency. 'installment_plan' and
  # 'subscription_plan' are mutually exclusive — specify at most one to model a
  # limited-cycle schedule.
  class SubscriptionSimulationRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Amount to be charged in each cycle. Must be a positive integer.
    # @return [Integer]
    attr_accessor :amount

    # ISO-4217 currency code.
    # @return [String]
    attr_accessor :currency

    # Transaction Token Payment Type schema.
    # @return [TransactionTokenPaymentType]
    attr_accessor :payment_type

    # Optional different amount for the first charge. Must be zero or greater.
    # @return [Integer]
    attr_accessor :initial_amount

    # Billing frequency for the simulated schedule. Includes `bimonthly`, which
    # is not offered on `SubscriptionPeriod` for live subscription creation.
    # @return [SubscriptionSimulationPeriod]
    attr_accessor :period

    # ISO-8601 Duration for custom frequency (e.g., P3D, P2M). Cannot be used
    # together with 'period' — specify exactly one of the two.
    # @return [String]
    attr_accessor :cyclical_period

    # Schedule settings applied to a subscription.
    # @return [SubscriptionScheduleSettings]
    attr_accessor :schedule_settings

    # Cycle-limiting plan configuration used to simulate an installment plan or
    # a Univapay-side subscription plan.
    # @return [SubscriptionSimulationPlanSettings]
    attr_accessor :installment_plan

    # Cycle-limiting plan configuration used to simulate an installment plan or
    # a Univapay-side subscription plan.
    # @return [SubscriptionSimulationPlanSettings]
    attr_accessor :subscription_plan

    # Whether only direct currency processing is allowed.
    # @return [TrueClass | FalseClass]
    attr_accessor :only_direct_currency

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['payment_type'] = 'payment_type'
      @_hash['initial_amount'] = 'initial_amount'
      @_hash['period'] = 'period'
      @_hash['cyclical_period'] = 'cyclical_period'
      @_hash['schedule_settings'] = 'schedule_settings'
      @_hash['installment_plan'] = 'installment_plan'
      @_hash['subscription_plan'] = 'subscription_plan'
      @_hash['only_direct_currency'] = 'only_direct_currency'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        initial_amount
        period
        cyclical_period
        installment_plan
        subscription_plan
        only_direct_currency
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount:, currency:, payment_type:, schedule_settings:,
                   initial_amount: SKIP, period: SKIP, cyclical_period: SKIP,
                   installment_plan: SKIP, subscription_plan: SKIP,
                   only_direct_currency: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @amount = amount
      @currency = currency
      @payment_type = payment_type
      @initial_amount = initial_amount unless initial_amount == SKIP
      @period = period unless period == SKIP
      @cyclical_period = cyclical_period unless cyclical_period == SKIP
      @schedule_settings = schedule_settings
      @installment_plan = installment_plan unless installment_plan == SKIP
      @subscription_plan = subscription_plan unless subscription_plan == SKIP
      @only_direct_currency = only_direct_currency unless only_direct_currency == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : nil
      currency = hash.key?('currency') ? hash['currency'] : nil
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : nil
      schedule_settings = SubscriptionScheduleSettings.from_hash(hash['schedule_settings']) if
        hash['schedule_settings']
      initial_amount =
        hash.key?('initial_amount') ? hash['initial_amount'] : SKIP
      period = hash.key?('period') ? hash['period'] : SKIP
      cyclical_period =
        hash.key?('cyclical_period') ? hash['cyclical_period'] : SKIP
      installment_plan = SubscriptionSimulationPlanSettings.from_hash(hash['installment_plan']) if
        hash['installment_plan']
      subscription_plan = SubscriptionSimulationPlanSettings.from_hash(hash['subscription_plan']) if
        hash['subscription_plan']
      only_direct_currency =
        hash.key?('only_direct_currency') ? hash['only_direct_currency'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionSimulationRequest.new(amount: amount,
                                        currency: currency,
                                        payment_type: payment_type,
                                        schedule_settings: schedule_settings,
                                        initial_amount: initial_amount,
                                        period: period,
                                        cyclical_period: cyclical_period,
                                        installment_plan: installment_plan,
                                        subscription_plan: subscription_plan,
                                        only_direct_currency: only_direct_currency,
                                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, currency: #{@currency}, payment_type: #{@payment_type},"\
      " initial_amount: #{@initial_amount}, period: #{@period}, cyclical_period:"\
      " #{@cyclical_period}, schedule_settings: #{@schedule_settings}, installment_plan:"\
      " #{@installment_plan}, subscription_plan: #{@subscription_plan}, only_direct_currency:"\
      " #{@only_direct_currency}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, currency: #{@currency.inspect}, payment_type:"\
      " #{@payment_type.inspect}, initial_amount: #{@initial_amount.inspect}, period:"\
      " #{@period.inspect}, cyclical_period: #{@cyclical_period.inspect}, schedule_settings:"\
      " #{@schedule_settings.inspect}, installment_plan: #{@installment_plan.inspect},"\
      " subscription_plan: #{@subscription_plan.inspect}, only_direct_currency:"\
      " #{@only_direct_currency.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
