# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Base Online Data Brand schema. `alipay_china`, `alipay_hk`, `gcash`, `dana`,
  # `truemoney`, `kakaopay`, `tng`, `rabbit_line_pay`, `bpi`, `boost`, `tinaba`,
  # `naver_pay`, `toss_pay`, `maya`, `grab_sg`, `kredivo_id`, `k_plus`, and
  # `kaspi_kz` are Alipay+ regional wallets routed through the
  # `alipay_plus_online` gateway family.
  class BaseOnlineDataBrand
    BASE_ONLINE_DATA_BRAND = [
      # TODO: Write general description for ALIPAY_ONLINE
      ALIPAY_ONLINE = 'alipay_online'.freeze,

      # TODO: Write general description for ALIPAY_PLUS_ONLINE
      ALIPAY_PLUS_ONLINE = 'alipay_plus_online'.freeze,

      # TODO: Write general description for PAY_PAY_ONLINE
      PAY_PAY_ONLINE = 'pay_pay_online'.freeze,

      # TODO: Write general description for WE_CHAT_ONLINE
      WE_CHAT_ONLINE = 'we_chat_online'.freeze,

      # TODO: Write general description for D_BARAI_ONLINE
      D_BARAI_ONLINE = 'd_barai_online'.freeze,

      # TODO: Write general description for ALIPAY_CHINA
      ALIPAY_CHINA = 'alipay_china'.freeze,

      # TODO: Write general description for ALIPAY_HK
      ALIPAY_HK = 'alipay_hk'.freeze,

      # TODO: Write general description for GCASH
      GCASH = 'gcash'.freeze,

      # TODO: Write general description for DANA
      DANA = 'dana'.freeze,

      # TODO: Write general description for TRUEMONEY
      TRUEMONEY = 'truemoney'.freeze,

      # TODO: Write general description for KAKAOPAY
      KAKAOPAY = 'kakaopay'.freeze,

      # TODO: Write general description for TNG
      TNG = 'tng'.freeze,

      # TODO: Write general description for RABBIT_LINE_PAY
      RABBIT_LINE_PAY = 'rabbit_line_pay'.freeze,

      # TODO: Write general description for BPI
      BPI = 'bpi'.freeze,

      # TODO: Write general description for BOOST
      BOOST = 'boost'.freeze,

      # TODO: Write general description for TINABA
      TINABA = 'tinaba'.freeze,

      # TODO: Write general description for NAVER_PAY
      NAVER_PAY = 'naver_pay'.freeze,

      # TODO: Write general description for TOSS_PAY
      TOSS_PAY = 'toss_pay'.freeze,

      # TODO: Write general description for MAYA
      MAYA = 'maya'.freeze,

      # TODO: Write general description for GRAB_SG
      GRAB_SG = 'grab_sg'.freeze,

      # TODO: Write general description for KREDIVO_ID
      KREDIVO_ID = 'kredivo_id'.freeze,

      # TODO: Write general description for K_PLUS
      K_PLUS = 'k_plus'.freeze,

      # TODO: Write general description for KASPI_KZ
      KASPI_KZ = 'kaspi_kz'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BASE_ONLINE_DATA_BRAND.include?(value)
    end

    def self.from_value(value, default_value = ALIPAY_ONLINE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'alipay_online' then ALIPAY_ONLINE
      when 'alipay_plus_online' then ALIPAY_PLUS_ONLINE
      when 'pay_pay_online' then PAY_PAY_ONLINE
      when 'we_chat_online' then WE_CHAT_ONLINE
      when 'd_barai_online' then D_BARAI_ONLINE
      when 'alipay_china' then ALIPAY_CHINA
      when 'alipay_hk' then ALIPAY_HK
      when 'gcash' then GCASH
      when 'dana' then DANA
      when 'truemoney' then TRUEMONEY
      when 'kakaopay' then KAKAOPAY
      when 'tng' then TNG
      when 'rabbit_line_pay' then RABBIT_LINE_PAY
      when 'bpi' then BPI
      when 'boost' then BOOST
      when 'tinaba' then TINABA
      when 'naver_pay' then NAVER_PAY
      when 'toss_pay' then TOSS_PAY
      when 'maya' then MAYA
      when 'grab_sg' then GRAB_SG
      when 'kredivo_id' then KREDIVO_ID
      when 'k_plus' then K_PLUS
      when 'kaspi_kz' then KASPI_KZ
      else
        default_value
      end
    end
  end
end
