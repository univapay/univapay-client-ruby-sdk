# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # The status the subscription would transition to on this payment's due date,
  # if a termination is scheduled. `null` when no termination applies.
  class TerminateWithStatus
    TERMINATE_WITH_STATUS = [
      # TODO: Write general description for SUSPENDED
      SUSPENDED = 'suspended'.freeze,

      # TODO: Write general description for CANCELED
      CANCELED = 'canceled'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TERMINATE_WITH_STATUS.include?(value)
    end

    def self.from_value(value, default_value = SUSPENDED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'suspended' then SUSPENDED
      when 'canceled' then CANCELED
      else
        default_value
      end
    end
  end
end
