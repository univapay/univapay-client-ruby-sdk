# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # The processor or service provider that handled the payment.
  class TransactionHistoryServiceProvider
    TRANSACTION_HISTORY_SERVICE_PROVIDER = [
      # TODO: Write general description for CREDIT
      CREDIT = 'credit'.freeze,

      # TODO: Write general description for CONVENIENCE
      CONVENIENCE = 'convenience'.freeze,

      # TODO: Write general description for BANK_TRANSFER
      BANK_TRANSFER = 'bank_transfer'.freeze,

      # TODO: Write general description for PAIDY
      PAIDY = 'paidy'.freeze,

      # TODO: Write general description for PAY_PAY
      PAY_PAY = 'pay_pay'.freeze,

      # TODO: Write general description for ALIPAY
      ALIPAY = 'alipay'.freeze,

      # TODO: Write general description for WE_CHAT
      WE_CHAT = 'we_chat'.freeze,

      # TODO: Write general description for DOCOMO
      DOCOMO = 'docomo'.freeze,

      # TODO: Write general description for MERCARI
      MERCARI = 'mercari'.freeze,

      # TODO: Write general description for AU
      AU = 'au'.freeze,

      # TODO: Write general description for RAKUTEN
      RAKUTEN = 'rakuten'.freeze,

      # TODO: Write general description for BARTONG
      BARTONG = 'bartong'.freeze,

      # TODO: Write general description for JKOPAY
      JKOPAY = 'jkopay'.freeze,

      # TODO: Write general description for GINKO_PAY
      GINKO_PAY = 'ginko_pay'.freeze,

      # TODO: Write general description for AEON_PAY
      AEON_PAY = 'aeon_pay'.freeze,

      # TODO: Write general description for EROMNET
      EROMNET = 'eromnet'.freeze,

      # TODO: Write general description for TEST
      TEST = 'test'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSACTION_HISTORY_SERVICE_PROVIDER.include?(value)
    end

    def self.from_value(value, default_value = CREDIT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'credit' then CREDIT
      when 'convenience' then CONVENIENCE
      when 'bank_transfer' then BANK_TRANSFER
      when 'paidy' then PAIDY
      when 'pay_pay' then PAY_PAY
      when 'alipay' then ALIPAY
      when 'we_chat' then WE_CHAT
      when 'docomo' then DOCOMO
      when 'mercari' then MERCARI
      when 'au' then AU
      when 'rakuten' then RAKUTEN
      when 'bartong' then BARTONG
      when 'jkopay' then JKOPAY
      when 'ginko_pay' then GINKO_PAY
      when 'aeon_pay' then AEON_PAY
      when 'eromnet' then EROMNET
      when 'test' then TEST
      else
        default_value
      end
    end
  end
end
