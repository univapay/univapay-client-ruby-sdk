# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Payment-type-specific details for this row. This is a single flat object
  # covering every payment type — the fields actually populated depend on
  # `payment_type` (documented per field below). Fields not applicable to a
  # given payment type are omitted.
  class TransactionHistoryUserData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Whether this row represents a charge or a refund.
    # @return [TransactionHistoryType]
    attr_accessor :type

    # Cardholder name. Present for `card` and `apple_pay` rows only.
    # @return [String]
    attr_accessor :cardholder_name

    # Cardholder/customer email address. Present for every payment type except
    # `konbini`'s legacy alias fields; always non-null for `bank_transfer` rows,
    # nullable for every other type.
    # @return [String]
    attr_accessor :cardholder_email_address

    # Cardholder phone number. Present for `paidy` rows only.
    # @return [String]
    attr_accessor :cardholder_phone_number

    # Customer name as entered at checkout. Present for `konbini` rows only
    # (empty string when not provided).
    # @return [String]
    attr_accessor :customer_name

    # Legacy duplicate of `brand`. Present for `konbini` rows only.
    # @return [String]
    attr_accessor :convenience_store

    # Raw brand identifier for the payment method. Present for every payment
    # type; the value set is payment-type-specific (e.g. card brands for
    # `card`/`apple_pay`, QR brands for `qr_scan`/`qr_merchant`, online-wallet
    # brands for `online`, convenience-store brands for `konbini`, `paidy` for
    # `paidy` rows). Nullable for `qr_scan`, `qr_merchant`, and `online`; always
    # non-null for the other types.
    # @return [String]
    attr_accessor :brand

    # Raw gateway identifier that processed the payment. Present for every
    # payment type.
    # @return [String]
    attr_accessor :gateway

    # Service provider, or `null` when not reported.
    # @return [TransactionHistoryServiceProvider]
    attr_accessor :service_provider

    # Refunds issued against this charge. Present for charge rows only (`type:
    # charge`); absent for refund rows.
    # @return [Array[TransactionHistoryRefund]]
    attr_accessor :refunds

    # Refund reason, or `null` when unset.
    # @return [TransactionHistoryRefundReason]
    attr_accessor :reason

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['cardholder_name'] = 'cardholder_name'
      @_hash['cardholder_email_address'] = 'cardholder_email_address'
      @_hash['cardholder_phone_number'] = 'cardholder_phone_number'
      @_hash['customer_name'] = 'customer_name'
      @_hash['convenience_store'] = 'convenience_store'
      @_hash['brand'] = 'brand'
      @_hash['gateway'] = 'gateway'
      @_hash['service_provider'] = 'service_provider'
      @_hash['refunds'] = 'refunds'
      @_hash['reason'] = 'reason'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        type
        cardholder_name
        cardholder_email_address
        cardholder_phone_number
        customer_name
        convenience_store
        brand
        gateway
        service_provider
        refunds
        reason
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        cardholder_email_address
        cardholder_phone_number
        brand
        gateway
        service_provider
        reason
      ]
    end

    def initialize(type: SKIP, cardholder_name: SKIP,
                   cardholder_email_address: SKIP,
                   cardholder_phone_number: SKIP, customer_name: SKIP,
                   convenience_store: SKIP, brand: SKIP, gateway: SKIP,
                   service_provider: SKIP, refunds: SKIP, reason: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @type = type unless type == SKIP
      @cardholder_name = cardholder_name unless cardholder_name == SKIP
      @cardholder_email_address = cardholder_email_address unless cardholder_email_address == SKIP
      @cardholder_phone_number = cardholder_phone_number unless cardholder_phone_number == SKIP
      @customer_name = customer_name unless customer_name == SKIP
      @convenience_store = convenience_store unless convenience_store == SKIP
      @brand = brand unless brand == SKIP
      @gateway = gateway unless gateway == SKIP
      @service_provider = service_provider unless service_provider == SKIP
      @refunds = refunds unless refunds == SKIP
      @reason = reason unless reason == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('type') ? hash['type'] : SKIP
      cardholder_name =
        hash.key?('cardholder_name') ? hash['cardholder_name'] : SKIP
      cardholder_email_address =
        hash.key?('cardholder_email_address') ? hash['cardholder_email_address'] : SKIP
      cardholder_phone_number =
        hash.key?('cardholder_phone_number') ? hash['cardholder_phone_number'] : SKIP
      customer_name = hash.key?('customer_name') ? hash['customer_name'] : SKIP
      convenience_store =
        hash.key?('convenience_store') ? hash['convenience_store'] : SKIP
      brand = hash.key?('brand') ? hash['brand'] : SKIP
      gateway = hash.key?('gateway') ? hash['gateway'] : SKIP
      service_provider =
        hash.key?('service_provider') ? hash['service_provider'] : SKIP
      # Parameter is an array, so we need to iterate through it
      refunds = nil
      unless hash['refunds'].nil?
        refunds = []
        hash['refunds'].each do |structure|
          refunds << (TransactionHistoryRefund.from_hash(structure) if structure)
        end
      end

      refunds = SKIP unless hash.key?('refunds')
      reason = hash.key?('reason') ? hash['reason'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TransactionHistoryUserData.new(type: type,
                                     cardholder_name: cardholder_name,
                                     cardholder_email_address: cardholder_email_address,
                                     cardholder_phone_number: cardholder_phone_number,
                                     customer_name: customer_name,
                                     convenience_store: convenience_store,
                                     brand: brand,
                                     gateway: gateway,
                                     service_provider: service_provider,
                                     refunds: refunds,
                                     reason: reason,
                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type}, cardholder_name: #{@cardholder_name},"\
      " cardholder_email_address: #{@cardholder_email_address}, cardholder_phone_number:"\
      " #{@cardholder_phone_number}, customer_name: #{@customer_name}, convenience_store:"\
      " #{@convenience_store}, brand: #{@brand}, gateway: #{@gateway}, service_provider:"\
      " #{@service_provider}, refunds: #{@refunds}, reason: #{@reason}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type.inspect}, cardholder_name: #{@cardholder_name.inspect},"\
      " cardholder_email_address: #{@cardholder_email_address.inspect}, cardholder_phone_number:"\
      " #{@cardholder_phone_number.inspect}, customer_name: #{@customer_name.inspect},"\
      " convenience_store: #{@convenience_store.inspect}, brand: #{@brand.inspect}, gateway:"\
      " #{@gateway.inspect}, service_provider: #{@service_provider.inspect}, refunds:"\
      " #{@refunds.inspect}, reason: #{@reason.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
