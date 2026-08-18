# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Merchant/store checkout configuration: enabled payment methods and their
  # limits, installment/subscription plan settings, convenience-store and
  # bank-transfer settings, widget theme, and per-brand feature support.
  # Returned in full on every call — there is no partial-update or list variant.
  class CheckoutInfo < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Store processing mode reflected in the checkout configuration: `live` and
    # `test` reflect the credential used to authenticate, while `live_test` is
    # reserved for privileged callers testing against live-mode data.
    # @return [CheckoutMode]
    attr_accessor :mode

    # Level of recurring-charge privilege granted to transaction tokens created
    # under this store: `none` disallows recurring use, `bounded` allows a
    # limited number of recurring charges, and `infinite` allows unlimited
    # recurring charges.
    # @return [CheckoutRecurringTokenPrivilege]
    attr_accessor :recurring_token_privilege

    # Store display name.
    # @return [String]
    attr_accessor :name

    # Card payment settings applied to checkout.
    # @return [CheckoutCardConfiguration]
    attr_accessor :card_configuration

    # Univapay-hosted subscription feature toggle.
    # @return [CheckoutSubscriptionConfiguration]
    attr_accessor :subscription_configuration

    # Installment plan configuration applied to checkout.
    # @return [CheckoutInstallmentsConfiguration]
    attr_accessor :installments_configuration

    # Univapay-side subscription plan configuration applied to checkout.
    # @return [CheckoutSubscriptionPlanConfiguration]
    attr_accessor :subscription_plan_configuration

    # EC checkout feature toggles for hosted email receipts and product line
    # items.
    # @return [CheckoutEcConfiguration]
    attr_accessor :checkout_configuration

    # QR-scan (CPM) payment settings applied to checkout.
    # @return [CheckoutQrScanConfiguration]
    attr_accessor :qr_scan_configuration

    # Convenience-store (konbini) payment settings applied to checkout.
    # @return [CheckoutConvenienceConfiguration]
    attr_accessor :convenience_configuration

    # Paidy payment feature toggle.
    # @return [CheckoutPaidyConfiguration]
    attr_accessor :paidy_configuration

    # Public key used to initialize the Paidy widget. `null` when Paidy is not
    # configured for this store.
    # @return [String]
    attr_accessor :paidy_public_key

    # URL of the store's checkout logo image. `null` when no logo is configured.
    # Note: this response field is `logo_image`, but the corresponding
    # store-configuration update field is `logo_url` — the two names do not
    # round-trip automatically.
    # @return [String]
    attr_accessor :logo_image

    # Widget theme applied to checkout.
    # @return [CheckoutTheme]
    attr_accessor :theme

    # CVV re-confirmation policy applied to recurring card charges
    # (subscriptions and tokens with recurring privilege).
    # @return [RecurringCvvConfirmation]
    attr_accessor :recurring_card_charge_cvv_confirmation

    # Online redirect/wallet payment feature toggle.
    # @return [CheckoutOnlineConfiguration]
    attr_accessor :online_configuration

    # Bank transfer (振込) payment settings applied to checkout.
    # @return [CheckoutBankTransferConfiguration]
    attr_accessor :bank_transfer_configuration

    # Feature support and capability flags for every payment-type / brand
    # combination the store can accept.
    # @return [Array[CheckoutSupportedBrand]]
    attr_accessor :supported_brands

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mode'] = 'mode'
      @_hash['recurring_token_privilege'] = 'recurring_token_privilege'
      @_hash['name'] = 'name'
      @_hash['card_configuration'] = 'card_configuration'
      @_hash['subscription_configuration'] = 'subscription_configuration'
      @_hash['installments_configuration'] = 'installments_configuration'
      @_hash['subscription_plan_configuration'] =
        'subscription_plan_configuration'
      @_hash['checkout_configuration'] = 'checkout_configuration'
      @_hash['qr_scan_configuration'] = 'qr_scan_configuration'
      @_hash['convenience_configuration'] = 'convenience_configuration'
      @_hash['paidy_configuration'] = 'paidy_configuration'
      @_hash['paidy_public_key'] = 'paidy_public_key'
      @_hash['logo_image'] = 'logo_image'
      @_hash['theme'] = 'theme'
      @_hash['recurring_card_charge_cvv_confirmation'] =
        'recurring_card_charge_cvv_confirmation'
      @_hash['online_configuration'] = 'online_configuration'
      @_hash['bank_transfer_configuration'] = 'bank_transfer_configuration'
      @_hash['supported_brands'] = 'supported_brands'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        mode
        recurring_token_privilege
        name
        card_configuration
        subscription_configuration
        installments_configuration
        subscription_plan_configuration
        checkout_configuration
        qr_scan_configuration
        convenience_configuration
        paidy_configuration
        paidy_public_key
        logo_image
        theme
        recurring_card_charge_cvv_confirmation
        online_configuration
        bank_transfer_configuration
        supported_brands
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        paidy_public_key
        logo_image
      ]
    end

    def initialize(mode: SKIP, recurring_token_privilege: SKIP, name: SKIP,
                   card_configuration: SKIP, subscription_configuration: SKIP,
                   installments_configuration: SKIP,
                   subscription_plan_configuration: SKIP,
                   checkout_configuration: SKIP, qr_scan_configuration: SKIP,
                   convenience_configuration: SKIP, paidy_configuration: SKIP,
                   paidy_public_key: SKIP, logo_image: SKIP, theme: SKIP,
                   recurring_card_charge_cvv_confirmation: SKIP,
                   online_configuration: SKIP,
                   bank_transfer_configuration: SKIP, supported_brands: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @mode = mode unless mode == SKIP
      unless recurring_token_privilege == SKIP
        @recurring_token_privilege =
          recurring_token_privilege
      end
      @name = name unless name == SKIP
      @card_configuration = card_configuration unless card_configuration == SKIP
      unless subscription_configuration == SKIP
        @subscription_configuration =
          subscription_configuration
      end
      unless installments_configuration == SKIP
        @installments_configuration =
          installments_configuration
      end
      unless subscription_plan_configuration == SKIP
        @subscription_plan_configuration =
          subscription_plan_configuration
      end
      @checkout_configuration = checkout_configuration unless checkout_configuration == SKIP
      @qr_scan_configuration = qr_scan_configuration unless qr_scan_configuration == SKIP
      unless convenience_configuration == SKIP
        @convenience_configuration =
          convenience_configuration
      end
      @paidy_configuration = paidy_configuration unless paidy_configuration == SKIP
      @paidy_public_key = paidy_public_key unless paidy_public_key == SKIP
      @logo_image = logo_image unless logo_image == SKIP
      @theme = theme unless theme == SKIP
      unless recurring_card_charge_cvv_confirmation == SKIP
        @recurring_card_charge_cvv_confirmation =
          recurring_card_charge_cvv_confirmation
      end
      @online_configuration = online_configuration unless online_configuration == SKIP
      unless bank_transfer_configuration == SKIP
        @bank_transfer_configuration =
          bank_transfer_configuration
      end
      @supported_brands = supported_brands unless supported_brands == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mode = hash.key?('mode') ? hash['mode'] : SKIP
      recurring_token_privilege =
        hash.key?('recurring_token_privilege') ? hash['recurring_token_privilege'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      card_configuration = CheckoutCardConfiguration.from_hash(hash['card_configuration']) if
        hash['card_configuration']
      if hash['subscription_configuration']
        subscription_configuration = CheckoutSubscriptionConfiguration.from_hash(hash['subscription_configuration'])
      end
      if hash['installments_configuration']
        installments_configuration = CheckoutInstallmentsConfiguration.from_hash(hash['installments_configuration'])
      end
      if hash['subscription_plan_configuration']
        subscription_plan_configuration = CheckoutSubscriptionPlanConfiguration.from_hash(hash['subscription_plan_configuration'])
      end
      checkout_configuration = CheckoutEcConfiguration.from_hash(hash['checkout_configuration']) if
        hash['checkout_configuration']
      if hash['qr_scan_configuration']
        qr_scan_configuration = CheckoutQrScanConfiguration.from_hash(hash['qr_scan_configuration'])
      end
      if hash['convenience_configuration']
        convenience_configuration = CheckoutConvenienceConfiguration.from_hash(hash['convenience_configuration'])
      end
      paidy_configuration = CheckoutPaidyConfiguration.from_hash(hash['paidy_configuration']) if
        hash['paidy_configuration']
      paidy_public_key =
        hash.key?('paidy_public_key') ? hash['paidy_public_key'] : SKIP
      logo_image = hash.key?('logo_image') ? hash['logo_image'] : SKIP
      theme = CheckoutTheme.from_hash(hash['theme']) if hash['theme']
      if hash['recurring_card_charge_cvv_confirmation']
        recurring_card_charge_cvv_confirmation = RecurringCvvConfirmation.from_hash(hash['recurring_card_charge_cvv_confirmation'])
      end
      online_configuration = CheckoutOnlineConfiguration.from_hash(hash['online_configuration']) if
        hash['online_configuration']
      if hash['bank_transfer_configuration']
        bank_transfer_configuration = CheckoutBankTransferConfiguration.from_hash(hash['bank_transfer_configuration'])
      end
      # Parameter is an array, so we need to iterate through it
      supported_brands = nil
      unless hash['supported_brands'].nil?
        supported_brands = []
        hash['supported_brands'].each do |structure|
          supported_brands << (CheckoutSupportedBrand.from_hash(structure) if structure)
        end
      end

      supported_brands = SKIP unless hash.key?('supported_brands')

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CheckoutInfo.new(mode: mode,
                       recurring_token_privilege: recurring_token_privilege,
                       name: name,
                       card_configuration: card_configuration,
                       subscription_configuration: subscription_configuration,
                       installments_configuration: installments_configuration,
                       subscription_plan_configuration: subscription_plan_configuration,
                       checkout_configuration: checkout_configuration,
                       qr_scan_configuration: qr_scan_configuration,
                       convenience_configuration: convenience_configuration,
                       paidy_configuration: paidy_configuration,
                       paidy_public_key: paidy_public_key,
                       logo_image: logo_image,
                       theme: theme,
                       recurring_card_charge_cvv_confirmation: recurring_card_charge_cvv_confirmation,
                       online_configuration: online_configuration,
                       bank_transfer_configuration: bank_transfer_configuration,
                       supported_brands: supported_brands,
                       additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} mode: #{@mode}, recurring_token_privilege: #{@recurring_token_privilege},"\
      " name: #{@name}, card_configuration: #{@card_configuration}, subscription_configuration:"\
      " #{@subscription_configuration}, installments_configuration:"\
      " #{@installments_configuration}, subscription_plan_configuration:"\
      " #{@subscription_plan_configuration}, checkout_configuration: #{@checkout_configuration},"\
      " qr_scan_configuration: #{@qr_scan_configuration}, convenience_configuration:"\
      " #{@convenience_configuration}, paidy_configuration: #{@paidy_configuration},"\
      " paidy_public_key: #{@paidy_public_key}, logo_image: #{@logo_image}, theme: #{@theme},"\
      " recurring_card_charge_cvv_confirmation: #{@recurring_card_charge_cvv_confirmation},"\
      " online_configuration: #{@online_configuration}, bank_transfer_configuration:"\
      " #{@bank_transfer_configuration}, supported_brands: #{@supported_brands},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} mode: #{@mode.inspect}, recurring_token_privilege:"\
      " #{@recurring_token_privilege.inspect}, name: #{@name.inspect}, card_configuration:"\
      " #{@card_configuration.inspect}, subscription_configuration:"\
      " #{@subscription_configuration.inspect}, installments_configuration:"\
      " #{@installments_configuration.inspect}, subscription_plan_configuration:"\
      " #{@subscription_plan_configuration.inspect}, checkout_configuration:"\
      " #{@checkout_configuration.inspect}, qr_scan_configuration:"\
      " #{@qr_scan_configuration.inspect}, convenience_configuration:"\
      " #{@convenience_configuration.inspect}, paidy_configuration:"\
      " #{@paidy_configuration.inspect}, paidy_public_key: #{@paidy_public_key.inspect},"\
      " logo_image: #{@logo_image.inspect}, theme: #{@theme.inspect},"\
      ' recurring_card_charge_cvv_confirmation:'\
      " #{@recurring_card_charge_cvv_confirmation.inspect}, online_configuration:"\
      " #{@online_configuration.inspect}, bank_transfer_configuration:"\
      " #{@bank_transfer_configuration.inspect}, supported_brands: #{@supported_brands.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
