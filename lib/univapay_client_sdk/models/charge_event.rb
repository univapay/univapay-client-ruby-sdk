# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Event type discriminator — `charge_updated` or `charge_finished`.
  class ChargeEvent
    CHARGE_EVENT = [
      # TODO: Write general description for CHARGE_UPDATED
      CHARGE_UPDATED = 'charge_updated'.freeze,

      # TODO: Write general description for CHARGE_FINISHED
      CHARGE_FINISHED = 'charge_finished'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CHARGE_EVENT.include?(value)
    end

    def self.from_value(value, default_value = CHARGE_UPDATED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'charge_updated' then CHARGE_UPDATED
      when 'charge_finished' then CHARGE_FINISHED
      else
        default_value
      end
    end
  end
end
