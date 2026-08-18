# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Card payment settings applied to checkout.
  class CheckoutCardConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Whether card payments are enabled.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Whether debit cards are allowed.
    # @return [TrueClass | FalseClass]
    attr_accessor :debit_enabled

    # Whether prepaid cards are allowed.
    # @return [TrueClass | FalseClass]
    attr_accessor :prepaid_enabled

    # Whether authorization-only flows are allowed for debit cards.
    # @return [TrueClass | FalseClass]
    attr_accessor :debit_authorization_enabled

    # Whether authorization-only flows are allowed for prepaid cards.
    # @return [TrueClass | FalseClass]
    attr_accessor :prepaid_authorization_enabled

    # Whether card processing is restricted to direct-settlement currencies.
    # @return [TrueClass | FalseClass]
    attr_accessor :only_direct_currency

    # Card brands rejected by merchant policy. Common values include `visa`,
    # `mastercard`, `american_express`, `maestro`, `discover`, `jcb`,
    # `diners_club`, `private_label`, and `unionpay`; gateway-specific brands
    # the platform cannot map appear as `unmapped_<raw value>`. `null` when no
    # brand is forbidden.
    # @return [Array[String]]
    attr_accessor :forbidden_card_brands

    # ISO 3166-1 alpha-2 country codes allowed to originate card payments by IP
    # geolocation. `null` when unrestricted.
    # @return [Array[String]]
    attr_accessor :allowed_countries_by_ip

    # Whether cards issued outside the primary operating country are allowed.
    # @return [TrueClass | FalseClass]
    attr_accessor :foreign_cards_allowed

    # Whether to reject card charges from previously unseen customer email
    # addresses. `null` when not configured.
    # @return [TrueClass | FalseClass]
    attr_accessor :fail_on_new_email

    # Per-card spending limit. `null` when no limit is configured.
    # @return [CardLimit]
    attr_accessor :card_limit

    # Whether card flows may proceed without a CVV. `null` when not configured.
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_empty_cvv

    # Whether direct card token creation is allowed without a hosted capture
    # flow.
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_direct_token_creation

    # Whether 3-D Secure is required for eligible card flows.
    # @return [TrueClass | FalseClass]
    attr_accessor :three_ds_required

    # Whether billing address data is required when running 3-D Secure.
    # @return [TrueClass | FalseClass]
    attr_accessor :three_ds_address_required

    # Whether privileged callers may request a 3-D Secure skip.
    # @return [TrueClass | FalseClass]
    attr_accessor :three_ds_skip_enabled

    # Whether a phone number is required when running 3-D Secure.
    # @return [TrueClass | FalseClass]
    attr_accessor :three_ds_phone_number_required

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['debit_enabled'] = 'debit_enabled'
      @_hash['prepaid_enabled'] = 'prepaid_enabled'
      @_hash['debit_authorization_enabled'] = 'debit_authorization_enabled'
      @_hash['prepaid_authorization_enabled'] =
        'prepaid_authorization_enabled'
      @_hash['only_direct_currency'] = 'only_direct_currency'
      @_hash['forbidden_card_brands'] = 'forbidden_card_brands'
      @_hash['allowed_countries_by_ip'] = 'allowed_countries_by_ip'
      @_hash['foreign_cards_allowed'] = 'foreign_cards_allowed'
      @_hash['fail_on_new_email'] = 'fail_on_new_email'
      @_hash['card_limit'] = 'card_limit'
      @_hash['allow_empty_cvv'] = 'allow_empty_cvv'
      @_hash['allow_direct_token_creation'] = 'allow_direct_token_creation'
      @_hash['three_ds_required'] = 'three_ds_required'
      @_hash['three_ds_address_required'] = 'three_ds_address_required'
      @_hash['three_ds_skip_enabled'] = 'three_ds_skip_enabled'
      @_hash['three_ds_phone_number_required'] =
        'three_ds_phone_number_required'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        debit_enabled
        prepaid_enabled
        debit_authorization_enabled
        prepaid_authorization_enabled
        only_direct_currency
        forbidden_card_brands
        allowed_countries_by_ip
        foreign_cards_allowed
        fail_on_new_email
        card_limit
        allow_empty_cvv
        allow_direct_token_creation
        three_ds_required
        three_ds_address_required
        three_ds_skip_enabled
        three_ds_phone_number_required
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        forbidden_card_brands
        allowed_countries_by_ip
        fail_on_new_email
        card_limit
        allow_empty_cvv
      ]
    end

    def initialize(enabled: SKIP, debit_enabled: SKIP, prepaid_enabled: SKIP,
                   debit_authorization_enabled: SKIP,
                   prepaid_authorization_enabled: SKIP,
                   only_direct_currency: SKIP, forbidden_card_brands: SKIP,
                   allowed_countries_by_ip: SKIP, foreign_cards_allowed: SKIP,
                   fail_on_new_email: SKIP, card_limit: SKIP,
                   allow_empty_cvv: SKIP, allow_direct_token_creation: SKIP,
                   three_ds_required: SKIP, three_ds_address_required: SKIP,
                   three_ds_skip_enabled: SKIP,
                   three_ds_phone_number_required: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @debit_enabled = debit_enabled unless debit_enabled == SKIP
      @prepaid_enabled = prepaid_enabled unless prepaid_enabled == SKIP
      unless debit_authorization_enabled == SKIP
        @debit_authorization_enabled =
          debit_authorization_enabled
      end
      unless prepaid_authorization_enabled == SKIP
        @prepaid_authorization_enabled =
          prepaid_authorization_enabled
      end
      @only_direct_currency = only_direct_currency unless only_direct_currency == SKIP
      @forbidden_card_brands = forbidden_card_brands unless forbidden_card_brands == SKIP
      @allowed_countries_by_ip = allowed_countries_by_ip unless allowed_countries_by_ip == SKIP
      @foreign_cards_allowed = foreign_cards_allowed unless foreign_cards_allowed == SKIP
      @fail_on_new_email = fail_on_new_email unless fail_on_new_email == SKIP
      @card_limit = card_limit unless card_limit == SKIP
      @allow_empty_cvv = allow_empty_cvv unless allow_empty_cvv == SKIP
      unless allow_direct_token_creation == SKIP
        @allow_direct_token_creation =
          allow_direct_token_creation
      end
      @three_ds_required = three_ds_required unless three_ds_required == SKIP
      unless three_ds_address_required == SKIP
        @three_ds_address_required =
          three_ds_address_required
      end
      @three_ds_skip_enabled = three_ds_skip_enabled unless three_ds_skip_enabled == SKIP
      unless three_ds_phone_number_required == SKIP
        @three_ds_phone_number_required =
          three_ds_phone_number_required
      end
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      debit_enabled = hash.key?('debit_enabled') ? hash['debit_enabled'] : SKIP
      prepaid_enabled =
        hash.key?('prepaid_enabled') ? hash['prepaid_enabled'] : SKIP
      debit_authorization_enabled =
        hash.key?('debit_authorization_enabled') ? hash['debit_authorization_enabled'] : SKIP
      prepaid_authorization_enabled =
        hash.key?('prepaid_authorization_enabled') ? hash['prepaid_authorization_enabled'] : SKIP
      only_direct_currency =
        hash.key?('only_direct_currency') ? hash['only_direct_currency'] : SKIP
      forbidden_card_brands =
        hash.key?('forbidden_card_brands') ? hash['forbidden_card_brands'] : SKIP
      allowed_countries_by_ip =
        hash.key?('allowed_countries_by_ip') ? hash['allowed_countries_by_ip'] : SKIP
      foreign_cards_allowed =
        hash.key?('foreign_cards_allowed') ? hash['foreign_cards_allowed'] : SKIP
      fail_on_new_email =
        hash.key?('fail_on_new_email') ? hash['fail_on_new_email'] : SKIP
      card_limit = CardLimit.from_hash(hash['card_limit']) if hash['card_limit']
      allow_empty_cvv =
        hash.key?('allow_empty_cvv') ? hash['allow_empty_cvv'] : SKIP
      allow_direct_token_creation =
        hash.key?('allow_direct_token_creation') ? hash['allow_direct_token_creation'] : SKIP
      three_ds_required =
        hash.key?('three_ds_required') ? hash['three_ds_required'] : SKIP
      three_ds_address_required =
        hash.key?('three_ds_address_required') ? hash['three_ds_address_required'] : SKIP
      three_ds_skip_enabled =
        hash.key?('three_ds_skip_enabled') ? hash['three_ds_skip_enabled'] : SKIP
      three_ds_phone_number_required =
        hash.key?('three_ds_phone_number_required') ? hash['three_ds_phone_number_required'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CheckoutCardConfiguration.new(enabled: enabled,
                                    debit_enabled: debit_enabled,
                                    prepaid_enabled: prepaid_enabled,
                                    debit_authorization_enabled: debit_authorization_enabled,
                                    prepaid_authorization_enabled: prepaid_authorization_enabled,
                                    only_direct_currency: only_direct_currency,
                                    forbidden_card_brands: forbidden_card_brands,
                                    allowed_countries_by_ip: allowed_countries_by_ip,
                                    foreign_cards_allowed: foreign_cards_allowed,
                                    fail_on_new_email: fail_on_new_email,
                                    card_limit: card_limit,
                                    allow_empty_cvv: allow_empty_cvv,
                                    allow_direct_token_creation: allow_direct_token_creation,
                                    three_ds_required: three_ds_required,
                                    three_ds_address_required: three_ds_address_required,
                                    three_ds_skip_enabled: three_ds_skip_enabled,
                                    three_ds_phone_number_required: three_ds_phone_number_required,
                                    additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, debit_enabled: #{@debit_enabled}, prepaid_enabled:"\
      " #{@prepaid_enabled}, debit_authorization_enabled: #{@debit_authorization_enabled},"\
      " prepaid_authorization_enabled: #{@prepaid_authorization_enabled}, only_direct_currency:"\
      " #{@only_direct_currency}, forbidden_card_brands: #{@forbidden_card_brands},"\
      " allowed_countries_by_ip: #{@allowed_countries_by_ip}, foreign_cards_allowed:"\
      " #{@foreign_cards_allowed}, fail_on_new_email: #{@fail_on_new_email}, card_limit:"\
      " #{@card_limit}, allow_empty_cvv: #{@allow_empty_cvv}, allow_direct_token_creation:"\
      " #{@allow_direct_token_creation}, three_ds_required: #{@three_ds_required},"\
      " three_ds_address_required: #{@three_ds_address_required}, three_ds_skip_enabled:"\
      " #{@three_ds_skip_enabled}, three_ds_phone_number_required:"\
      " #{@three_ds_phone_number_required}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, debit_enabled: #{@debit_enabled.inspect},"\
      " prepaid_enabled: #{@prepaid_enabled.inspect}, debit_authorization_enabled:"\
      " #{@debit_authorization_enabled.inspect}, prepaid_authorization_enabled:"\
      " #{@prepaid_authorization_enabled.inspect}, only_direct_currency:"\
      " #{@only_direct_currency.inspect}, forbidden_card_brands:"\
      " #{@forbidden_card_brands.inspect}, allowed_countries_by_ip:"\
      " #{@allowed_countries_by_ip.inspect}, foreign_cards_allowed:"\
      " #{@foreign_cards_allowed.inspect}, fail_on_new_email: #{@fail_on_new_email.inspect},"\
      " card_limit: #{@card_limit.inspect}, allow_empty_cvv: #{@allow_empty_cvv.inspect},"\
      " allow_direct_token_creation: #{@allow_direct_token_creation.inspect}, three_ds_required:"\
      " #{@three_ds_required.inspect}, three_ds_address_required:"\
      " #{@three_ds_address_required.inspect}, three_ds_skip_enabled:"\
      " #{@three_ds_skip_enabled.inspect}, three_ds_phone_number_required:"\
      " #{@three_ds_phone_number_required.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
