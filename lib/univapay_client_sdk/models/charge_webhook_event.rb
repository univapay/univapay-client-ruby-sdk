# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Webhook envelope for charge lifecycle events. Fired as `charge_updated`
  # whenever a charge transitions to a new status (e.g., `pending` →
  # `awaiting`), and as `charge_finished` when a charge reaches a terminal
  # status (`successful`, `failed`, `error`). The `data` field contains the full
  # Charge object at the time of the event.
  class ChargeWebhookEvent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique ID of this webhook delivery.
    # @return [UUID | String]
    attr_accessor :id

    # Event type discriminator — `charge_updated` or `charge_finished`.
    # @return [ChargeEvent]
    attr_accessor :event

    # Charge resource returned by the payments API.
    # @return [Charge]
    attr_accessor :data

    # Timestamp when the event was fired.
    # @return [DateTime]
    attr_accessor :created_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['event'] = 'event'
      @_hash['data'] = 'data'
      @_hash['created_on'] = 'created_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        data
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id:, event:, created_on:, data: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id
      @event = event
      @data = data unless data == SKIP
      @created_on = created_on
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      event = hash.key?('event') ? hash['event'] : nil
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   end
      data = Charge.from_hash(hash['data']) if hash['data']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      ChargeWebhookEvent.new(id: id,
                             event: event,
                             created_on: created_on,
                             data: data,
                             additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Validates an instance of the object from a given value.
    # @param [ChargeWebhookEvent | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.id,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.event,
                                  ->(val) { ChargeEvent.validate(val) }) and
            APIHelper.valid_type?(value.created_on,
                                  ->(val) { val.instance_of? DateTime })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['id'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['event'],
                                ->(val) { ChargeEvent.validate(val) }) and
          APIHelper.valid_type?(value['created_on'],
                                ->(val) { val.instance_of? String })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, event: #{@event}, data: #{@data}, created_on: #{@created_on},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, event: #{@event.inspect}, data: #{@data.inspect},"\
      " created_on: #{@created_on.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
