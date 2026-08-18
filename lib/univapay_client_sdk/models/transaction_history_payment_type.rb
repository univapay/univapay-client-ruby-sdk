# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # The payment method used for the underlying charge.
  class TransactionHistoryPaymentType
    TRANSACTION_HISTORY_PAYMENT_TYPE = [
      # TODO: Write general description for CARD
      CARD = 'card'.freeze,

      # TODO: Write general description for QR_SCAN
      QR_SCAN = 'qr_scan'.freeze,

      # TODO: Write general description for QR_MERCHANT
      QR_MERCHANT = 'qr_merchant'.freeze,

      # TODO: Write general description for KONBINI
      KONBINI = 'konbini'.freeze,

      # TODO: Write general description for APPLE_PAY
      APPLE_PAY = 'apple_pay'.freeze,

      # TODO: Write general description for PAIDY
      PAIDY = 'paidy'.freeze,

      # TODO: Write general description for ONLINE
      ONLINE = 'online'.freeze,

      # TODO: Write general description for BANK_TRANSFER
      BANK_TRANSFER = 'bank_transfer'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSACTION_HISTORY_PAYMENT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = CARD)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'card' then CARD
      when 'qr_scan' then QR_SCAN
      when 'qr_merchant' then QR_MERCHANT
      when 'konbini' then KONBINI
      when 'apple_pay' then APPLE_PAY
      when 'paidy' then PAIDY
      when 'online' then ONLINE
      when 'bank_transfer' then BANK_TRANSFER
      else
        default_value
      end
    end
  end
end
