# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Schedule settings that can be updated on a subscription.
  class SubscriptionUpdateScheduleSettings < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Subscription Termination Mode schema.
    # @return [SubscriptionTerminationMode]
    attr_accessor :termination_mode

    # Subscription start date (YYYY-MM-DD). Used to change the first actual
    # charge date for subscriptions that initially only registered a payment
    # method. Must be in the future; only available before the subscription has
    # more than one paid payment.
    # @return [Date]
    attr_accessor :start_on

    # If true, subsequent charges will always occur on the last day of the
    # month.
    # @return [TrueClass | FalseClass]
    attr_accessor :preserve_end_of_month

    # ISO-8601 Duration for retry interval if payment fails  (e.g., P3D for 3
    # days, PT48H for 48 hours).
    # @return [String]
    attr_accessor :retry_interval

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['termination_mode'] = 'termination_mode'
      @_hash['start_on'] = 'start_on'
      @_hash['preserve_end_of_month'] = 'preserve_end_of_month'
      @_hash['retry_interval'] = 'retry_interval'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        termination_mode
        start_on
        preserve_end_of_month
        retry_interval
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(termination_mode: SubscriptionTerminationMode::IMMEDIATE,
                   start_on: SKIP, preserve_end_of_month: SKIP,
                   retry_interval: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @termination_mode = termination_mode unless termination_mode == SKIP
      @start_on = start_on unless start_on == SKIP
      @preserve_end_of_month = preserve_end_of_month unless preserve_end_of_month == SKIP
      @retry_interval = retry_interval unless retry_interval == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      termination_mode =
        hash['termination_mode'] ||= SubscriptionTerminationMode::IMMEDIATE
      start_on = hash.key?('start_on') ? hash['start_on'] : SKIP
      preserve_end_of_month =
        hash.key?('preserve_end_of_month') ? hash['preserve_end_of_month'] : SKIP
      retry_interval =
        hash.key?('retry_interval') ? hash['retry_interval'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionUpdateScheduleSettings.new(termination_mode: termination_mode,
                                             start_on: start_on,
                                             preserve_end_of_month: preserve_end_of_month,
                                             retry_interval: retry_interval,
                                             additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} termination_mode: #{@termination_mode}, start_on: #{@start_on},"\
      " preserve_end_of_month: #{@preserve_end_of_month}, retry_interval: #{@retry_interval},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} termination_mode: #{@termination_mode.inspect}, start_on:"\
      " #{@start_on.inspect}, preserve_end_of_month: #{@preserve_end_of_month.inspect},"\
      " retry_interval: #{@retry_interval.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
