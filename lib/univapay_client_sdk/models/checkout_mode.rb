# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Store processing mode reflected in the checkout configuration: `live` and
  # `test` reflect the credential used to authenticate, while `live_test` is
  # reserved for privileged callers testing against live-mode data.
  class CheckoutMode
    CHECKOUT_MODE = [
      # TODO: Write general description for LIVE
      LIVE = 'live'.freeze,

      # TODO: Write general description for TEST
      TEST = 'test'.freeze,

      # TODO: Write general description for LIVE_TEST
      LIVE_TEST = 'live_test'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CHECKOUT_MODE.include?(value)
    end

    def self.from_value(value, default_value = LIVE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'live' then LIVE
      when 'test' then TEST
      when 'live_test' then LIVE_TEST
      else
        default_value
      end
    end
  end
end
