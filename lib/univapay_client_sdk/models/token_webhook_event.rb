# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Webhook envelope for transaction token lifecycle events. Fired as
  # `token_created` when a token is created, `token_updated` on metadata
  # changes, `token_three_d_s_updated` on 3-D Secure data changes,
  # `token_cvv_auth_updated` on CVV authorization changes,
  # `token_cvv_auth_check_updated` on CVV auth check changes, `token_replaced`
  # when a token is replaced by a new one (e.g., after a card update), and
  # `recurring_token_deleted` when a recurring token is deleted. The `data`
  # field contains the full TransactionToken object at the time of the event.
  class TokenWebhookEvent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique ID of this webhook delivery.
    # @return [UUID | String]
    attr_accessor :id

    # Event type discriminator — `token_created`, `token_updated`,
    # `token_three_d_s_updated`, `token_cvv_auth_updated`,
    # `token_cvv_auth_check_updated`, `token_replaced`, or
    # `recurring_token_deleted`.
    # @return [TokenEvent]
    attr_accessor :event

    # Stored transaction token resource.
    # @return [TransactionToken]
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
      data = TransactionToken.from_hash(hash['data']) if hash['data']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenWebhookEvent.new(id: id,
                            event: event,
                            created_on: created_on,
                            data: data,
                            additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenWebhookEvent | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.id,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.event,
                                  ->(val) { TokenEvent.validate(val) }) and
            APIHelper.valid_type?(value.created_on,
                                  ->(val) { val.instance_of? DateTime })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['id'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['event'],
                                ->(val) { TokenEvent.validate(val) }) and
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
