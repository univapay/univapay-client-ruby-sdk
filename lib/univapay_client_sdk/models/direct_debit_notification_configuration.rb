# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Which direct debit email notifications the merchant has opted into.
  class DirectDebitNotificationConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Notify when the deadline for the bank to receive the signed mandate
    # approaches (郵送期限の通知).
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_deadline_mailing

    # Notify when the transfer registration cutoff approaches (締切日の通知).
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_deadline_debit

    # Notify when transfer results are reflected (振替結果の通知).
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_debit_update

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['notify_deadline_mailing'] = 'notify_deadline_mailing'
      @_hash['notify_deadline_debit'] = 'notify_deadline_debit'
      @_hash['notify_debit_update'] = 'notify_debit_update'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        notify_deadline_mailing
        notify_deadline_debit
        notify_debit_update
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(notify_deadline_mailing: SKIP, notify_deadline_debit: SKIP,
                   notify_debit_update: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @notify_deadline_mailing = notify_deadline_mailing unless notify_deadline_mailing == SKIP
      @notify_deadline_debit = notify_deadline_debit unless notify_deadline_debit == SKIP
      @notify_debit_update = notify_debit_update unless notify_debit_update == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      notify_deadline_mailing =
        hash.key?('notify_deadline_mailing') ? hash['notify_deadline_mailing'] : SKIP
      notify_deadline_debit =
        hash.key?('notify_deadline_debit') ? hash['notify_deadline_debit'] : SKIP
      notify_debit_update =
        hash.key?('notify_debit_update') ? hash['notify_debit_update'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      DirectDebitNotificationConfiguration.new(notify_deadline_mailing: notify_deadline_mailing,
                                               notify_deadline_debit: notify_deadline_debit,
                                               notify_debit_update: notify_debit_update,
                                               additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} notify_deadline_mailing: #{@notify_deadline_mailing},"\
      " notify_deadline_debit: #{@notify_deadline_debit}, notify_debit_update:"\
      " #{@notify_debit_update}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} notify_deadline_mailing: #{@notify_deadline_mailing.inspect},"\
      " notify_deadline_debit: #{@notify_deadline_debit.inspect}, notify_debit_update:"\
      " #{@notify_debit_update.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
