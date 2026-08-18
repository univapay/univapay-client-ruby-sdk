# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Feature support and capability flags for a single payment-type / brand
  # combination the store can accept.
  class CheckoutSupportedBrand < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Payment type identifier used throughout the checkout configuration.
    # @return [CheckoutPaymentType]
    attr_accessor :payment_type

    # Brand identifier for `payment_type`. For `card` and `apple_pay`, one of
    # the common `CardBrand` values (`visa`, `mastercard`, `american_express`,
    # `maestro`, `discover`, `jcb`, `diners_club`, `private_label`, `unionpay`)
    # or an `unmapped_<raw value>` fallback. For `qr_scan`, a QR-CPM brand (e.g.
    # `pay_pay`, `we_chat`, `qq`, `line_pay`, `au_pay`, `alipay_china`). For
    # `qr_merchant`, a QR-MPM brand (e.g. `rakuten_pay_merchant`,
    # `alipay_merchant_qr`, `pay_pay_merchant`, `d_barai_mpm`, `we_chat_mpm`).
    # For `online`, an online-redirect brand (e.g. `alipay_online`,
    # `pay_pay_online`, `we_chat_online`, `d_barai_online`, `kakaopay`). For
    # `konbini`, a convenience-store brand (e.g. `seven_eleven`, `family_mart`,
    # `lawson`). For `paidy` and `bank_transfer`, the payment type's own
    # identifier. The full brand catalogue is large and gateway-dependent —
    # treat this as an open string, not a fixed set.
    # @return [String]
    attr_accessor :brand

    # Legacy alias of `brand`. Present only when `payment_type` is `card` or
    # `apple_pay`.
    # @return [String]
    attr_accessor :card_brand

    # Legacy alias of `brand`. Present only when `payment_type` is
    # `qr_merchant`.
    # @return [String]
    attr_accessor :qr_brand

    # Legacy alias of `brand`. Present only when `payment_type` is `online`.
    # @return [String]
    attr_accessor :online_brand

    # Whether the brand's supported feature set is resolved dynamically.
    # @return [TrueClass | FalseClass]
    attr_accessor :dynamic_info

    # Whether the brand supports separate authorization and capture.
    # @return [TrueClass | FalseClass]
    attr_accessor :support_auth_capture

    # Whether the brand requires the cardholder's full name.
    # @return [TrueClass | FalseClass]
    attr_accessor :requires_full_name

    # Whether the brand requires a CVV.
    # @return [TrueClass | FalseClass]
    attr_accessor :requires_cvv

    # ISO 3166-1 alpha-2 country codes allowed for this brand. `null` when
    # unrestricted.
    # @return [Array[String]]
    attr_accessor :countries_allowed

    # ISO-4217 currency codes supported by this brand. `null` when unrestricted.
    # @return [Array[String]]
    attr_accessor :supported_currencies

    # Whether this brand supports CVV-only authorization.
    # @return [TrueClass | FalseClass]
    attr_accessor :cvv_auth

    # Whether this brand supports installment plans.
    # @return [TrueClass | FalseClass]
    attr_accessor :installment_capable

    # Whether this brand supports multi-currency pricing.
    # @return [TrueClass | FalseClass]
    attr_accessor :mcp_capable

    # Whether this brand is only available through multi-currency pricing.
    # @return [TrueClass | FalseClass]
    attr_accessor :mcp_only

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_type'] = 'payment_type'
      @_hash['brand'] = 'brand'
      @_hash['card_brand'] = 'card_brand'
      @_hash['qr_brand'] = 'qr_brand'
      @_hash['online_brand'] = 'online_brand'
      @_hash['dynamic_info'] = 'dynamic_info'
      @_hash['support_auth_capture'] = 'support_auth_capture'
      @_hash['requires_full_name'] = 'requires_full_name'
      @_hash['requires_cvv'] = 'requires_cvv'
      @_hash['countries_allowed'] = 'countries_allowed'
      @_hash['supported_currencies'] = 'supported_currencies'
      @_hash['cvv_auth'] = 'cvv_auth'
      @_hash['installment_capable'] = 'installment_capable'
      @_hash['mcp_capable'] = 'mcp_capable'
      @_hash['mcp_only'] = 'mcp_only'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        payment_type
        brand
        card_brand
        qr_brand
        online_brand
        dynamic_info
        support_auth_capture
        requires_full_name
        requires_cvv
        countries_allowed
        supported_currencies
        cvv_auth
        installment_capable
        mcp_capable
        mcp_only
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        countries_allowed
        supported_currencies
      ]
    end

    def initialize(payment_type: SKIP, brand: SKIP, card_brand: SKIP,
                   qr_brand: SKIP, online_brand: SKIP, dynamic_info: SKIP,
                   support_auth_capture: SKIP, requires_full_name: SKIP,
                   requires_cvv: SKIP, countries_allowed: SKIP,
                   supported_currencies: SKIP, cvv_auth: SKIP,
                   installment_capable: SKIP, mcp_capable: SKIP, mcp_only: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @payment_type = payment_type unless payment_type == SKIP
      @brand = brand unless brand == SKIP
      @card_brand = card_brand unless card_brand == SKIP
      @qr_brand = qr_brand unless qr_brand == SKIP
      @online_brand = online_brand unless online_brand == SKIP
      @dynamic_info = dynamic_info unless dynamic_info == SKIP
      @support_auth_capture = support_auth_capture unless support_auth_capture == SKIP
      @requires_full_name = requires_full_name unless requires_full_name == SKIP
      @requires_cvv = requires_cvv unless requires_cvv == SKIP
      @countries_allowed = countries_allowed unless countries_allowed == SKIP
      @supported_currencies = supported_currencies unless supported_currencies == SKIP
      @cvv_auth = cvv_auth unless cvv_auth == SKIP
      @installment_capable = installment_capable unless installment_capable == SKIP
      @mcp_capable = mcp_capable unless mcp_capable == SKIP
      @mcp_only = mcp_only unless mcp_only == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP
      brand = hash.key?('brand') ? hash['brand'] : SKIP
      card_brand = hash.key?('card_brand') ? hash['card_brand'] : SKIP
      qr_brand = hash.key?('qr_brand') ? hash['qr_brand'] : SKIP
      online_brand = hash.key?('online_brand') ? hash['online_brand'] : SKIP
      dynamic_info = hash.key?('dynamic_info') ? hash['dynamic_info'] : SKIP
      support_auth_capture =
        hash.key?('support_auth_capture') ? hash['support_auth_capture'] : SKIP
      requires_full_name =
        hash.key?('requires_full_name') ? hash['requires_full_name'] : SKIP
      requires_cvv = hash.key?('requires_cvv') ? hash['requires_cvv'] : SKIP
      countries_allowed =
        hash.key?('countries_allowed') ? hash['countries_allowed'] : SKIP
      supported_currencies =
        hash.key?('supported_currencies') ? hash['supported_currencies'] : SKIP
      cvv_auth = hash.key?('cvv_auth') ? hash['cvv_auth'] : SKIP
      installment_capable =
        hash.key?('installment_capable') ? hash['installment_capable'] : SKIP
      mcp_capable = hash.key?('mcp_capable') ? hash['mcp_capable'] : SKIP
      mcp_only = hash.key?('mcp_only') ? hash['mcp_only'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CheckoutSupportedBrand.new(payment_type: payment_type,
                                 brand: brand,
                                 card_brand: card_brand,
                                 qr_brand: qr_brand,
                                 online_brand: online_brand,
                                 dynamic_info: dynamic_info,
                                 support_auth_capture: support_auth_capture,
                                 requires_full_name: requires_full_name,
                                 requires_cvv: requires_cvv,
                                 countries_allowed: countries_allowed,
                                 supported_currencies: supported_currencies,
                                 cvv_auth: cvv_auth,
                                 installment_capable: installment_capable,
                                 mcp_capable: mcp_capable,
                                 mcp_only: mcp_only,
                                 additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_type: #{@payment_type}, brand: #{@brand}, card_brand:"\
      " #{@card_brand}, qr_brand: #{@qr_brand}, online_brand: #{@online_brand}, dynamic_info:"\
      " #{@dynamic_info}, support_auth_capture: #{@support_auth_capture}, requires_full_name:"\
      " #{@requires_full_name}, requires_cvv: #{@requires_cvv}, countries_allowed:"\
      " #{@countries_allowed}, supported_currencies: #{@supported_currencies}, cvv_auth:"\
      " #{@cvv_auth}, installment_capable: #{@installment_capable}, mcp_capable: #{@mcp_capable},"\
      " mcp_only: #{@mcp_only}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_type: #{@payment_type.inspect}, brand: #{@brand.inspect},"\
      " card_brand: #{@card_brand.inspect}, qr_brand: #{@qr_brand.inspect}, online_brand:"\
      " #{@online_brand.inspect}, dynamic_info: #{@dynamic_info.inspect}, support_auth_capture:"\
      " #{@support_auth_capture.inspect}, requires_full_name: #{@requires_full_name.inspect},"\
      " requires_cvv: #{@requires_cvv.inspect}, countries_allowed: #{@countries_allowed.inspect},"\
      " supported_currencies: #{@supported_currencies.inspect}, cvv_auth: #{@cvv_auth.inspect},"\
      " installment_capable: #{@installment_capable.inspect}, mcp_capable:"\
      " #{@mcp_capable.inspect}, mcp_only: #{@mcp_only.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
