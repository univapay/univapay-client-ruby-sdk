# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Event type discriminator — `subscription_created`, `subscription_payment`,
  # `subscription_completed`, `subscription_failure`, `subscription_canceled`,
  # or `subscription_suspended`.
  class SubscriptionEvent
    SUBSCRIPTION_EVENT = [
      # TODO: Write general description for SUBSCRIPTION_CREATED
      SUBSCRIPTION_CREATED = 'subscription_created'.freeze,

      # TODO: Write general description for SUBSCRIPTION_PAYMENT
      SUBSCRIPTION_PAYMENT = 'subscription_payment'.freeze,

      # TODO: Write general description for SUBSCRIPTION_COMPLETED
      SUBSCRIPTION_COMPLETED = 'subscription_completed'.freeze,

      # TODO: Write general description for SUBSCRIPTION_FAILURE
      SUBSCRIPTION_FAILURE = 'subscription_failure'.freeze,

      # TODO: Write general description for SUBSCRIPTION_CANCELED
      SUBSCRIPTION_CANCELED = 'subscription_canceled'.freeze,

      # TODO: Write general description for SUBSCRIPTION_SUSPENDED
      SUBSCRIPTION_SUSPENDED = 'subscription_suspended'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_EVENT.include?(value)
    end

    def self.from_value(value, default_value = SUBSCRIPTION_CREATED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'subscription_created' then SUBSCRIPTION_CREATED
      when 'subscription_payment' then SUBSCRIPTION_PAYMENT
      when 'subscription_completed' then SUBSCRIPTION_COMPLETED
      when 'subscription_failure' then SUBSCRIPTION_FAILURE
      when 'subscription_canceled' then SUBSCRIPTION_CANCELED
      when 'subscription_suspended' then SUBSCRIPTION_SUSPENDED
      else
        default_value
      end
    end
  end
end
