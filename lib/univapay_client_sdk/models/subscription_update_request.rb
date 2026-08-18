# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request payload for updating a subscription.
  class SubscriptionUpdateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Transaction token ID used for the subscription.  Can be changed to update
    # the payment method (e.g., when a card expires).  Allowed only when the
    # status is `unconfirmed`, `unpaid`, `current`, or `suspended`.
    # @return [UUID | String]
    attr_accessor :transaction_token_id

    # The recurring charge amount (applied to the cycle after the next one).
    # Not available for limited-cycle subscriptions.  To change the immediate
    # next payment amount, update `next_payment.amount` instead.
    # @return [Integer]
    attr_accessor :amount

    # Subscription Period schema.
    # @return [SubscriptionPeriod]
    attr_accessor :period

    # ISO-8601 Duration for custom frequency (e.g., P3D, P2M). Cannot be used
    # together with `period`. Only allowed before the subscription's first
    # payment has been paid.
    # @return [String]
    attr_accessor :cyclical_period

    # Different amount for the first charge. Only allowed while the subscription
    # status is still editable (before it has started) and requires the App
    # Token Secret.
    # @return [Integer]
    attr_accessor :initial_amount

    # Configuration for limited-cycle subscriptions (Univapay side).
    # @return [SubscriptionPlanSettings]
    attr_accessor :subscription_plan

    # Configuration for credit card company side installments.
    # @return [SubscriptionInstallmentPlan]
    attr_accessor :installment_plan

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :metadata

    # Update the subscription status.  `suspended`: Pause the subscription.
    # `unpaid`: Resume a suspended subscription.
    # @return [SubscriptionUpdateStatus]
    attr_accessor :status

    # Schedule settings that can be updated on a subscription.
    # @return [SubscriptionUpdateScheduleSettings]
    attr_accessor :schedule_settings

    # Fields that can be updated on the next scheduled payment.
    # @return [SubscriptionUpdateNextPayment]
    attr_accessor :next_payment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_token_id'] = 'transaction_token_id'
      @_hash['amount'] = 'amount'
      @_hash['period'] = 'period'
      @_hash['cyclical_period'] = 'cyclical_period'
      @_hash['initial_amount'] = 'initial_amount'
      @_hash['subscription_plan'] = 'subscription_plan'
      @_hash['installment_plan'] = 'installment_plan'
      @_hash['metadata'] = 'metadata'
      @_hash['status'] = 'status'
      @_hash['schedule_settings'] = 'schedule_settings'
      @_hash['next_payment'] = 'next_payment'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        transaction_token_id
        amount
        period
        cyclical_period
        initial_amount
        subscription_plan
        installment_plan
        metadata
        status
        schedule_settings
        next_payment
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(transaction_token_id: SKIP, amount: SKIP, period: SKIP,
                   cyclical_period: SKIP, initial_amount: SKIP,
                   subscription_plan: SKIP, installment_plan: SKIP,
                   metadata: SKIP, status: SKIP, schedule_settings: SKIP,
                   next_payment: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @transaction_token_id = transaction_token_id unless transaction_token_id == SKIP
      @amount = amount unless amount == SKIP
      @period = period unless period == SKIP
      @cyclical_period = cyclical_period unless cyclical_period == SKIP
      @initial_amount = initial_amount unless initial_amount == SKIP
      @subscription_plan = subscription_plan unless subscription_plan == SKIP
      @installment_plan = installment_plan unless installment_plan == SKIP
      @metadata = metadata unless metadata == SKIP
      @status = status unless status == SKIP
      @schedule_settings = schedule_settings unless schedule_settings == SKIP
      @next_payment = next_payment unless next_payment == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_token_id =
        hash.key?('transaction_token_id') ? hash['transaction_token_id'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      period = hash.key?('period') ? hash['period'] : SKIP
      cyclical_period =
        hash.key?('cyclical_period') ? hash['cyclical_period'] : SKIP
      initial_amount =
        hash.key?('initial_amount') ? hash['initial_amount'] : SKIP
      subscription_plan = SubscriptionPlanSettings.from_hash(hash['subscription_plan']) if
        hash['subscription_plan']
      installment_plan = SubscriptionInstallmentPlan.from_hash(hash['installment_plan']) if
        hash['installment_plan']
      metadata = GenericMetadata.from_hash(hash['metadata']) if hash['metadata']
      status = hash.key?('status') ? hash['status'] : SKIP
      schedule_settings = SubscriptionUpdateScheduleSettings.from_hash(hash['schedule_settings']) if
        hash['schedule_settings']
      next_payment = SubscriptionUpdateNextPayment.from_hash(hash['next_payment']) if
        hash['next_payment']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionUpdateRequest.new(transaction_token_id: transaction_token_id,
                                    amount: amount,
                                    period: period,
                                    cyclical_period: cyclical_period,
                                    initial_amount: initial_amount,
                                    subscription_plan: subscription_plan,
                                    installment_plan: installment_plan,
                                    metadata: metadata,
                                    status: status,
                                    schedule_settings: schedule_settings,
                                    next_payment: next_payment,
                                    additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_token_id: #{@transaction_token_id}, amount: #{@amount}, period:"\
      " #{@period}, cyclical_period: #{@cyclical_period}, initial_amount: #{@initial_amount},"\
      " subscription_plan: #{@subscription_plan}, installment_plan: #{@installment_plan},"\
      " metadata: #{@metadata}, status: #{@status}, schedule_settings: #{@schedule_settings},"\
      " next_payment: #{@next_payment}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_token_id: #{@transaction_token_id.inspect}, amount:"\
      " #{@amount.inspect}, period: #{@period.inspect}, cyclical_period:"\
      " #{@cyclical_period.inspect}, initial_amount: #{@initial_amount.inspect},"\
      " subscription_plan: #{@subscription_plan.inspect}, installment_plan:"\
      " #{@installment_plan.inspect}, metadata: #{@metadata.inspect}, status: #{@status.inspect},"\
      " schedule_settings: #{@schedule_settings.inspect}, next_payment: #{@next_payment.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
