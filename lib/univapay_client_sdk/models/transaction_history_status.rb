# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Status of the underlying resource. Charge rows use the full set of values;
  # refund rows only ever report `pending`, `successful`, `failed`, or `error`.
  class TransactionHistoryStatus
    TRANSACTION_HISTORY_STATUS = [
      # TODO: Write general description for PENDING
      PENDING = 'pending'.freeze,

      # TODO: Write general description for AUTHORIZED
      AUTHORIZED = 'authorized'.freeze,

      # TODO: Write general description for SUCCESSFUL
      SUCCESSFUL = 'successful'.freeze,

      # TODO: Write general description for FAILED
      FAILED = 'failed'.freeze,

      # TODO: Write general description for ERROR
      ERROR = 'error'.freeze,

      # TODO: Write general description for CANCELED
      CANCELED = 'canceled'.freeze,

      # TODO: Write general description for AWAITING
      AWAITING = 'awaiting'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSACTION_HISTORY_STATUS.include?(value)
    end

    def self.from_value(value, default_value = PENDING)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'pending' then PENDING
      when 'authorized' then AUTHORIZED
      when 'successful' then SUCCESSFUL
      when 'failed' then FAILED
      when 'error' then ERROR
      when 'canceled' then CANCELED
      when 'awaiting' then AWAITING
      else
        default_value
      end
    end
  end
end
