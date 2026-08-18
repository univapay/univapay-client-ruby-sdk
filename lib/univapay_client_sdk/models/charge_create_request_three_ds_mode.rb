# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # 3D-Secure authentication type. App Token Secret is required to use 'skip'.
  # `if_available` enforces 3DS only if credentials are available for the
  # recurring token and it has not already completed 3DS. `provided` is set
  # automatically by the server when external MPI authentication data
  # (`authentication_value`, `eci`, etc.) is submitted on the request and cannot
  # be set manually. When omitted, the store's default 3DS policy applies — do
  # not assume 'normal'.
  class ChargeCreateRequestThreeDsMode
    CHARGE_CREATE_REQUEST_THREE_DS_MODE = [
      # TODO: Write general description for NORMAL
      NORMAL = 'normal'.freeze,

      # TODO: Write general description for REQUIRE
      REQUIRE = 'require'.freeze,

      # TODO: Write general description for FORCE
      FORCE = 'force'.freeze,

      # TODO: Write general description for SKIP
      SKIP = 'skip'.freeze,

      # TODO: Write general description for IF_AVAILABLE
      IF_AVAILABLE = 'if_available'.freeze,

      # TODO: Write general description for PROVIDED
      PROVIDED = 'provided'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CHARGE_CREATE_REQUEST_THREE_DS_MODE.include?(value)
    end

    def self.from_value(value, default_value = NORMAL)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'normal' then NORMAL
      when 'require' then REQUIRE
      when 'force' then FORCE
      when 'skip' then SKIP
      when 'if_available' then IF_AVAILABLE
      when 'provided' then PROVIDED
      else
        default_value
      end
    end
  end
end
