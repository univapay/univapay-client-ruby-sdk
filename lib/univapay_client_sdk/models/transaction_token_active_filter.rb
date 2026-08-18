# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Filter recurring tokens by active status.
  class TransactionTokenActiveFilter
    TRANSACTION_TOKEN_ACTIVE_FILTER = [
      # TODO: Write general description for ACTIVE
      ACTIVE = 'active'.freeze,

      # TODO: Write general description for INACTIVE
      INACTIVE = 'inactive'.freeze,

      # TODO: Write general description for ALL
      ALL = 'all'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSACTION_TOKEN_ACTIVE_FILTER.include?(value)
    end

    def self.from_value(value, default_value = ACTIVE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'active' then ACTIVE
      when 'inactive' then INACTIVE
      when 'all' then ALL
      else
        default_value
      end
    end
  end
end
