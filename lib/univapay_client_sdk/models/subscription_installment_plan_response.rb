# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Installment plan applied to the subscription, as returned by the API. Covers
  # both card-network installment plans (`revolving`, `fixed_cycles`) and legacy
  # fixed-amount installment plans (`fixed_cycle_amount`).
  class SubscriptionInstallmentPlanResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Plan type selector.
    # @return [CombinedPlanType]
    attr_accessor :plan_type

    # Number of installment cycles. Present when plan_type is fixed_cycles.
    # @return [CombinedInstallmentFixedCycles]
    attr_accessor :fixed_cycles

    # Total target amount for the fixed_cycle_amount plan type, in the smallest
    # currency unit. Present when plan_type is fixed_cycle_amount. Note the
    # plural `fixed_cycles_amount` key differs from `subscription_plan`'s
    # singular `fixed_cycle_amount`.
    # @return [Integer]
    attr_accessor :fixed_cycles_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['plan_type'] = 'plan_type'
      @_hash['fixed_cycles'] = 'fixed_cycles'
      @_hash['fixed_cycles_amount'] = 'fixed_cycles_amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        plan_type
        fixed_cycles
        fixed_cycles_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        fixed_cycles
        fixed_cycles_amount
      ]
    end

    def initialize(plan_type: SKIP, fixed_cycles: SKIP,
                   fixed_cycles_amount: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @plan_type = plan_type unless plan_type == SKIP
      @fixed_cycles = fixed_cycles unless fixed_cycles == SKIP
      @fixed_cycles_amount = fixed_cycles_amount unless fixed_cycles_amount == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      plan_type = hash.key?('plan_type') ? hash['plan_type'] : SKIP
      fixed_cycles = hash.key?('fixed_cycles') ? hash['fixed_cycles'] : SKIP
      fixed_cycles_amount =
        hash.key?('fixed_cycles_amount') ? hash['fixed_cycles_amount'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionInstallmentPlanResponse.new(plan_type: plan_type,
                                              fixed_cycles: fixed_cycles,
                                              fixed_cycles_amount: fixed_cycles_amount,
                                              additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionInstallmentPlanResponse | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} plan_type: #{@plan_type}, fixed_cycles: #{@fixed_cycles},"\
      " fixed_cycles_amount: #{@fixed_cycles_amount}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} plan_type: #{@plan_type.inspect}, fixed_cycles: #{@fixed_cycles.inspect},"\
      " fixed_cycles_amount: #{@fixed_cycles_amount.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
