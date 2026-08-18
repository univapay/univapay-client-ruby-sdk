# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # A single charge or refund row in the merchant's transaction history.
  class TransactionHistoryItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Store identifier.
    # @return [UUID | String]
    attr_accessor :store_id

    # ID of the underlying resource — a charge ID for charge rows, a refund ID
    # for refund rows.
    # @return [UUID | String]
    attr_accessor :resource_id

    # ID of the originating charge. `null` for charge rows; set for refund rows.
    # @return [UUID | String]
    attr_accessor :charge_id

    # Amount, in the currency's minor unit.
    # @return [Integer]
    attr_accessor :amount

    # ISO-4217 currency code.
    # @return [String]
    attr_accessor :currency

    # Amount, formatted per the currency's display scale.
    # @return [Float]
    attr_accessor :amount_formatted

    # Whether this row represents a charge or a refund.
    # @return [TransactionHistoryType]
    attr_accessor :type

    # Status of the underlying resource. Charge rows use the full set of values;
    # refund rows only ever report `pending`, `successful`, `failed`, or
    # `error`.
    # @return [TransactionHistoryStatus]
    attr_accessor :status

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :metadata

    # Timestamp when the underlying resource was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Environment mode: `live` and `test` reflect the credential used to
    # authenticate, while `live_test` is reserved for privileged callers testing
    # against live-mode data.
    # @return [TransactionHistoryMode]
    attr_accessor :mode

    # Merchant display name.
    # @return [String]
    attr_accessor :merchant_name

    # Store display name.
    # @return [String]
    attr_accessor :store_name

    # The payment method used for the underlying charge.
    # @return [TransactionHistoryPaymentType]
    attr_accessor :payment_type

    # Payment-type-specific details for this row. This is a single flat object
    # covering every payment type — the fields actually populated depend on
    # `payment_type` (documented per field below). Fields not applicable to a
    # given payment type are omitted.
    # @return [TransactionHistoryUserData]
    attr_accessor :user_data

    # Bank transfer payment status, or `null` when not applicable.
    # @return [BankTransferPaymentStatus]
    attr_accessor :bank_transfer_payment_status

    # Timestamp of the most recent deposit matched against a bank transfer
    # charge. `null` when not applicable.
    # @return [DateTime]
    attr_accessor :bank_transfer_latest_deposit_date

    # ID of the multi-currency-pricing token used, when applicable. `null` when
    # not applicable.
    # @return [UUID | String]
    attr_accessor :mcp_token_id

    # Charge type, or `null` when not applicable.
    # @return [TransactionHistoryChargeType]
    attr_accessor :charge_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['store_id'] = 'store_id'
      @_hash['resource_id'] = 'resource_id'
      @_hash['charge_id'] = 'charge_id'
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['amount_formatted'] = 'amount_formatted'
      @_hash['type'] = 'type'
      @_hash['status'] = 'status'
      @_hash['metadata'] = 'metadata'
      @_hash['created_on'] = 'created_on'
      @_hash['mode'] = 'mode'
      @_hash['merchant_name'] = 'merchant_name'
      @_hash['store_name'] = 'store_name'
      @_hash['payment_type'] = 'payment_type'
      @_hash['user_data'] = 'user_data'
      @_hash['bank_transfer_payment_status'] = 'bank_transfer_payment_status'
      @_hash['bank_transfer_latest_deposit_date'] =
        'bank_transfer_latest_deposit_date'
      @_hash['mcp_token_id'] = 'mcp_token_id'
      @_hash['charge_type'] = 'charge_type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        store_id
        resource_id
        charge_id
        amount
        currency
        amount_formatted
        type
        status
        metadata
        created_on
        mode
        merchant_name
        store_name
        payment_type
        user_data
        bank_transfer_payment_status
        bank_transfer_latest_deposit_date
        mcp_token_id
        charge_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        charge_id
        bank_transfer_payment_status
        bank_transfer_latest_deposit_date
        mcp_token_id
        charge_type
      ]
    end

    def initialize(store_id: SKIP, resource_id: SKIP, charge_id: SKIP,
                   amount: SKIP, currency: SKIP, amount_formatted: SKIP,
                   type: SKIP, status: SKIP, metadata: SKIP, created_on: SKIP,
                   mode: SKIP, merchant_name: SKIP, store_name: SKIP,
                   payment_type: SKIP, user_data: SKIP,
                   bank_transfer_payment_status: SKIP,
                   bank_transfer_latest_deposit_date: SKIP, mcp_token_id: SKIP,
                   charge_type: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @store_id = store_id unless store_id == SKIP
      @resource_id = resource_id unless resource_id == SKIP
      @charge_id = charge_id unless charge_id == SKIP
      @amount = amount unless amount == SKIP
      @currency = currency unless currency == SKIP
      @amount_formatted = amount_formatted unless amount_formatted == SKIP
      @type = type unless type == SKIP
      @status = status unless status == SKIP
      @metadata = metadata unless metadata == SKIP
      @created_on = created_on unless created_on == SKIP
      @mode = mode unless mode == SKIP
      @merchant_name = merchant_name unless merchant_name == SKIP
      @store_name = store_name unless store_name == SKIP
      @payment_type = payment_type unless payment_type == SKIP
      @user_data = user_data unless user_data == SKIP
      unless bank_transfer_payment_status == SKIP
        @bank_transfer_payment_status =
          bank_transfer_payment_status
      end
      unless bank_transfer_latest_deposit_date == SKIP
        @bank_transfer_latest_deposit_date =
          bank_transfer_latest_deposit_date
      end
      @mcp_token_id = mcp_token_id unless mcp_token_id == SKIP
      @charge_type = charge_type unless charge_type == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      store_id = hash.key?('store_id') ? hash['store_id'] : SKIP
      resource_id = hash.key?('resource_id') ? hash['resource_id'] : SKIP
      charge_id = hash.key?('charge_id') ? hash['charge_id'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      amount_formatted =
        hash.key?('amount_formatted') ? hash['amount_formatted'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      metadata = GenericMetadata.from_hash(hash['metadata']) if hash['metadata']
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end
      mode = hash.key?('mode') ? hash['mode'] : SKIP
      merchant_name = hash.key?('merchant_name') ? hash['merchant_name'] : SKIP
      store_name = hash.key?('store_name') ? hash['store_name'] : SKIP
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP
      user_data = TransactionHistoryUserData.from_hash(hash['user_data']) if hash['user_data']
      bank_transfer_payment_status =
        hash.key?('bank_transfer_payment_status') ? hash['bank_transfer_payment_status'] : SKIP
      bank_transfer_latest_deposit_date = if hash.key?('bank_transfer_latest_deposit_date')
                                            (DateTimeHelper.from_rfc3339(hash['bank_transfer_latest_deposit_date']) if hash['bank_transfer_latest_deposit_date'])
                                          else
                                            SKIP
                                          end
      mcp_token_id = hash.key?('mcp_token_id') ? hash['mcp_token_id'] : SKIP
      charge_type = hash.key?('charge_type') ? hash['charge_type'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TransactionHistoryItem.new(store_id: store_id,
                                 resource_id: resource_id,
                                 charge_id: charge_id,
                                 amount: amount,
                                 currency: currency,
                                 amount_formatted: amount_formatted,
                                 type: type,
                                 status: status,
                                 metadata: metadata,
                                 created_on: created_on,
                                 mode: mode,
                                 merchant_name: merchant_name,
                                 store_name: store_name,
                                 payment_type: payment_type,
                                 user_data: user_data,
                                 bank_transfer_payment_status: bank_transfer_payment_status,
                                 bank_transfer_latest_deposit_date: bank_transfer_latest_deposit_date,
                                 mcp_token_id: mcp_token_id,
                                 charge_type: charge_type,
                                 additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    def to_custom_bank_transfer_latest_deposit_date
      DateTimeHelper.to_rfc3339(bank_transfer_latest_deposit_date)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} store_id: #{@store_id}, resource_id: #{@resource_id}, charge_id:"\
      " #{@charge_id}, amount: #{@amount}, currency: #{@currency}, amount_formatted:"\
      " #{@amount_formatted}, type: #{@type}, status: #{@status}, metadata: #{@metadata},"\
      " created_on: #{@created_on}, mode: #{@mode}, merchant_name: #{@merchant_name}, store_name:"\
      " #{@store_name}, payment_type: #{@payment_type}, user_data: #{@user_data},"\
      " bank_transfer_payment_status: #{@bank_transfer_payment_status},"\
      " bank_transfer_latest_deposit_date: #{@bank_transfer_latest_deposit_date}, mcp_token_id:"\
      " #{@mcp_token_id}, charge_type: #{@charge_type}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} store_id: #{@store_id.inspect}, resource_id: #{@resource_id.inspect},"\
      " charge_id: #{@charge_id.inspect}, amount: #{@amount.inspect}, currency:"\
      " #{@currency.inspect}, amount_formatted: #{@amount_formatted.inspect}, type:"\
      " #{@type.inspect}, status: #{@status.inspect}, metadata: #{@metadata.inspect}, created_on:"\
      " #{@created_on.inspect}, mode: #{@mode.inspect}, merchant_name: #{@merchant_name.inspect},"\
      " store_name: #{@store_name.inspect}, payment_type: #{@payment_type.inspect}, user_data:"\
      " #{@user_data.inspect}, bank_transfer_payment_status:"\
      " #{@bank_transfer_payment_status.inspect}, bank_transfer_latest_deposit_date:"\
      " #{@bank_transfer_latest_deposit_date.inspect}, mcp_token_id: #{@mcp_token_id.inspect},"\
      " charge_type: #{@charge_type.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
