# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Level of recurring-charge privilege granted to transaction tokens created
  # under this store: `none` disallows recurring use, `bounded` allows a limited
  # number of recurring charges, and `infinite` allows unlimited recurring
  # charges.
  class CheckoutRecurringTokenPrivilege
    CHECKOUT_RECURRING_TOKEN_PRIVILEGE = [
      # TODO: Write general description for NONE
      NONE = 'none'.freeze,

      # TODO: Write general description for BOUNDED
      BOUNDED = 'bounded'.freeze,

      # TODO: Write general description for INFINITE
      INFINITE = 'infinite'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CHECKOUT_RECURRING_TOKEN_PRIVILEGE.include?(value)
    end

    def self.from_value(value, default_value = NONE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'none' then NONE
      when 'bounded' then BOUNDED
      when 'infinite' then INFINITE
      else
        default_value
      end
    end
  end
end
