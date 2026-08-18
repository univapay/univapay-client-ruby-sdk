# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # TransactionHistoryApi
  class TransactionHistoryApi < BaseApi
    # Returns a paginated, searchable history of charges and refunds across all
    # of the merchant's stores, combining both resource types into a single
    # unified row shape.
    # @param [TransactionHistoryMode] mode Optional parameter: Filter by
    # environment mode.
    # @param [String] short_id Optional parameter: Filter by the last 6
    # characters of a resource's UUID. Must be exactly 6 characters.
    # @param [String] from Optional parameter: Show rows created on or after
    # this date. Accepts epoch-millis or an ISO-8601 date-time. Must not be
    # later than `to`.
    # @param [String] to Optional parameter: Show rows created on or before this
    # date. Accepts epoch-millis or an ISO-8601 date-time. Must not be earlier
    # than `from`.
    # @param [TransactionHistoryStatus] status Optional parameter: Filter by
    # status. Accepts any charge or refund status value.
    # @param [TransactionHistoryType] type Optional parameter: Filter by row
    # type.
    # @param [String] search Optional parameter: Free-text search across
    # cardholder/customer name and email. Wrap a value in quotes (`"first
    # last"`) for an exact-phrase match; an unquoted value matches partially.
    # @param [String] email Optional parameter: Filter by email address.
    # @param [UUID | String] id Optional parameter: Filter by exact charge or
    # refund ID.
    # @param [String] metadata Optional parameter: Filter by metadata.
    # @param [String] card_exp Optional parameter: Filter by card expiration, in
    # `yyyy-MM` format.
    # @param [String] card_last_four Optional parameter: Filter by the last 4
    # digits of the card. Must be exactly 4 characters.
    # @param [String] cardholder Optional parameter: Filter by cardholder name.
    # Partial match by default; wrap in quotes for an exact-phrase match.
    # @param [Array[String]] card_brand Optional parameter: Deprecated legacy
    # alias of `brand`; use `brand` instead. Repeatable via the `[]` suffix
    # (e.g. `card_brand[]=visa&card_brand[]=jcb`). Raw brand identifiers vary by
    # payment type — see the `user_data.brand` field on this endpoint's
    # response.
    # @param [Array[String]] brand Optional parameter: Filter by brand.
    # Repeatable via the `[]` suffix (e.g. `brand[]=visa&brand[]=jcb`). Raw
    # brand identifiers vary by payment type — see the `user_data.brand` field
    # on this endpoint's response.
    # @param [Array[String]] brands Optional parameter: Deprecated legacy alias
    # of `brand`; use `brand` instead. Repeatable via the `[]` suffix (e.g.
    # `brands[]=visa&brands[]=jcb`). Raw brand identifiers vary by payment type
    # — see the `user_data.brand` field on this endpoint's response.
    # @param [String] currency Optional parameter: Filter by currency
    # (ISO-4217).
    # @param [TransactionHistoryServiceProvider] service_provider Optional
    # parameter: Filter by service provider.
    # @param [Array[TransactionHistoryServiceProvider]] service_providers
    # Optional parameter: Filter by service provider. Repeatable via the `[]`
    # suffix (e.g. `service_providers[]=credit&service_providers[]=paidy`). Must
    # not be empty; duplicate values are deduplicated.
    # @param [String] gateway_transaction_id Optional parameter: Filter by the
    # gateway's own transaction ID (free text).
    # @param [Array[BankTransferPaymentStatus]] bank_transfer_payment_statuses
    # Optional parameter: Filter bank transfer rows by payment status.
    # Repeatable via the `[]` suffix (e.g.
    # `bank_transfer_payment_statuses[]=unpaid&bank_transfer_payment_statuses[]=
    # exact`).
    # @param [String] bank_transfer_latest_deposit_date_from Optional parameter:
    # Start of the range (inclusive) for `bank_transfer_latest_deposit_date`.
    # Accepts epoch-millis or an ISO-8601 date-time.
    # @param [String] bank_transfer_latest_deposit_date_to Optional parameter:
    # End of the range (inclusive) for `bank_transfer_latest_deposit_date`.
    # Accepts epoch-millis or an ISO-8601 date-time.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_transaction_history(mode: nil,
                                 short_id: nil,
                                 from: nil,
                                 to: nil,
                                 status: nil,
                                 type: nil,
                                 search: nil,
                                 email: nil,
                                 id: nil,
                                 metadata: nil,
                                 card_exp: nil,
                                 card_last_four: nil,
                                 cardholder: nil,
                                 card_brand: nil,
                                 brand: nil,
                                 brands: nil,
                                 currency: nil,
                                 service_provider: nil,
                                 service_providers: nil,
                                 gateway_transaction_id: nil,
                                 bank_transfer_payment_statuses: nil,
                                 bank_transfer_latest_deposit_date_from: nil,
                                 bank_transfer_latest_deposit_date_to: nil,
                                 limit: 10,
                                 cursor: nil,
                                 cursor_direction: CursorDirectionQuery::DESC)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/transaction_history',
                                     Server::DEFAULT)
                   .query_param(new_parameter(mode, key: 'mode'))
                   .query_param(new_parameter(short_id, key: 'short_id'))
                   .query_param(new_parameter(from, key: 'from'))
                   .query_param(new_parameter(to, key: 'to'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(type, key: 'type'))
                   .query_param(new_parameter(search, key: 'search'))
                   .query_param(new_parameter(email, key: 'email'))
                   .query_param(new_parameter(id, key: 'id'))
                   .query_param(new_parameter(metadata, key: 'metadata'))
                   .query_param(new_parameter(card_exp, key: 'card_exp'))
                   .query_param(new_parameter(card_last_four, key: 'card_last_four'))
                   .query_param(new_parameter(cardholder, key: 'cardholder'))
                   .query_param(new_parameter(card_brand, key: 'card_brand[]'))
                   .query_param(new_parameter(brand, key: 'brand[]'))
                   .query_param(new_parameter(brands, key: 'brands[]'))
                   .query_param(new_parameter(currency, key: 'currency'))
                   .query_param(new_parameter(service_provider, key: 'service_provider'))
                   .query_param(new_parameter(service_providers, key: 'service_providers[]'))
                   .query_param(new_parameter(gateway_transaction_id, key: 'gateway_transaction_id'))
                   .query_param(new_parameter(bank_transfer_payment_statuses, key: 'bank_transfer_payment_statuses[]'))
                   .query_param(new_parameter(bank_transfer_latest_deposit_date_from, key: 'bank_transfer_latest_deposit_date.from'))
                   .query_param(new_parameter(bank_transfer_latest_deposit_date_to, key: 'bank_transfer_latest_deposit_date.to'))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN'))
                   .array_serialization_format(ArraySerializationFormat::UN_INDEXED))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransactionHistoryList.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('429',
                                          'HTTP 429 Rate Limited: {$response.body#/code}',
                                          APIException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          APIException)
                    .local_error_template('409',
                                          'HTTP 409 Conflict: {$response.body#/code}',
                                          APIException)
                    .local_error_template('500',
                                          'HTTP 500 Server Error: {$response.body#/code}',
                                          APIException)
                    .local_error_template('503',
                                          'HTTP 503 Unavailable: {$response.body#/code}',
                                          APIException)
                    .local_error_template('504',
                                          'HTTP 504 Timeout: {$response.body#/code}',
                                          APIException)
                    .local_error_template('default',
                                          'HTTP {$statusCode}: {$response.body#/code}',
                                          APIException))
        .execute
    end

    # Returns a paginated, searchable history of charges and refunds for a
    # single store, combining both resource types into a single unified row
    # shape.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [TransactionHistoryMode] mode Optional parameter: Filter by
    # environment mode.
    # @param [String] short_id Optional parameter: Filter by the last 6
    # characters of a resource's UUID. Must be exactly 6 characters.
    # @param [String] from Optional parameter: Show rows created on or after
    # this date. Accepts epoch-millis or an ISO-8601 date-time. Must not be
    # later than `to`.
    # @param [String] to Optional parameter: Show rows created on or before this
    # date. Accepts epoch-millis or an ISO-8601 date-time. Must not be earlier
    # than `from`.
    # @param [TransactionHistoryStatus] status Optional parameter: Filter by
    # status. Accepts any charge or refund status value.
    # @param [TransactionHistoryType] type Optional parameter: Filter by row
    # type.
    # @param [String] search Optional parameter: Free-text search across
    # cardholder/customer name and email. Wrap a value in quotes (`"first
    # last"`) for an exact-phrase match; an unquoted value matches partially.
    # @param [String] email Optional parameter: Filter by email address.
    # @param [UUID | String] id Optional parameter: Filter by exact charge or
    # refund ID.
    # @param [String] metadata Optional parameter: Filter by metadata.
    # @param [String] card_exp Optional parameter: Filter by card expiration, in
    # `yyyy-MM` format.
    # @param [String] card_last_four Optional parameter: Filter by the last 4
    # digits of the card. Must be exactly 4 characters.
    # @param [String] cardholder Optional parameter: Filter by cardholder name.
    # Partial match by default; wrap in quotes for an exact-phrase match.
    # @param [Array[String]] card_brand Optional parameter: Deprecated legacy
    # alias of `brand`; use `brand` instead. Repeatable via the `[]` suffix
    # (e.g. `card_brand[]=visa&card_brand[]=jcb`). Raw brand identifiers vary by
    # payment type — see the `user_data.brand` field on this endpoint's
    # response.
    # @param [Array[String]] brand Optional parameter: Filter by brand.
    # Repeatable via the `[]` suffix (e.g. `brand[]=visa&brand[]=jcb`). Raw
    # brand identifiers vary by payment type — see the `user_data.brand` field
    # on this endpoint's response.
    # @param [Array[String]] brands Optional parameter: Deprecated legacy alias
    # of `brand`; use `brand` instead. Repeatable via the `[]` suffix (e.g.
    # `brands[]=visa&brands[]=jcb`). Raw brand identifiers vary by payment type
    # — see the `user_data.brand` field on this endpoint's response.
    # @param [String] currency Optional parameter: Filter by currency
    # (ISO-4217).
    # @param [TransactionHistoryServiceProvider] service_provider Optional
    # parameter: Filter by service provider.
    # @param [Array[TransactionHistoryServiceProvider]] service_providers
    # Optional parameter: Filter by service provider. Repeatable via the `[]`
    # suffix (e.g. `service_providers[]=credit&service_providers[]=paidy`). Must
    # not be empty; duplicate values are deduplicated.
    # @param [String] gateway_transaction_id Optional parameter: Filter by the
    # gateway's own transaction ID (free text).
    # @param [Array[BankTransferPaymentStatus]] bank_transfer_payment_statuses
    # Optional parameter: Filter bank transfer rows by payment status.
    # Repeatable via the `[]` suffix (e.g.
    # `bank_transfer_payment_statuses[]=unpaid&bank_transfer_payment_statuses[]=
    # exact`).
    # @param [String] bank_transfer_latest_deposit_date_from Optional parameter:
    # Start of the range (inclusive) for `bank_transfer_latest_deposit_date`.
    # Accepts epoch-millis or an ISO-8601 date-time.
    # @param [String] bank_transfer_latest_deposit_date_to Optional parameter:
    # End of the range (inclusive) for `bank_transfer_latest_deposit_date`.
    # Accepts epoch-millis or an ISO-8601 date-time.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_store_transaction_history(store_id,
                                       mode: nil,
                                       short_id: nil,
                                       from: nil,
                                       to: nil,
                                       status: nil,
                                       type: nil,
                                       search: nil,
                                       email: nil,
                                       id: nil,
                                       metadata: nil,
                                       card_exp: nil,
                                       card_last_four: nil,
                                       cardholder: nil,
                                       card_brand: nil,
                                       brand: nil,
                                       brands: nil,
                                       currency: nil,
                                       service_provider: nil,
                                       service_providers: nil,
                                       gateway_transaction_id: nil,
                                       bank_transfer_payment_statuses: nil,
                                       bank_transfer_latest_deposit_date_from: nil,
                                       bank_transfer_latest_deposit_date_to: nil,
                                       limit: 10,
                                       cursor: nil,
                                       cursor_direction: CursorDirectionQuery::DESC)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/transaction_history',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(mode, key: 'mode'))
                   .query_param(new_parameter(short_id, key: 'short_id'))
                   .query_param(new_parameter(from, key: 'from'))
                   .query_param(new_parameter(to, key: 'to'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(type, key: 'type'))
                   .query_param(new_parameter(search, key: 'search'))
                   .query_param(new_parameter(email, key: 'email'))
                   .query_param(new_parameter(id, key: 'id'))
                   .query_param(new_parameter(metadata, key: 'metadata'))
                   .query_param(new_parameter(card_exp, key: 'card_exp'))
                   .query_param(new_parameter(card_last_four, key: 'card_last_four'))
                   .query_param(new_parameter(cardholder, key: 'cardholder'))
                   .query_param(new_parameter(card_brand, key: 'card_brand[]'))
                   .query_param(new_parameter(brand, key: 'brand[]'))
                   .query_param(new_parameter(brands, key: 'brands[]'))
                   .query_param(new_parameter(currency, key: 'currency'))
                   .query_param(new_parameter(service_provider, key: 'service_provider'))
                   .query_param(new_parameter(service_providers, key: 'service_providers[]'))
                   .query_param(new_parameter(gateway_transaction_id, key: 'gateway_transaction_id'))
                   .query_param(new_parameter(bank_transfer_payment_statuses, key: 'bank_transfer_payment_statuses[]'))
                   .query_param(new_parameter(bank_transfer_latest_deposit_date_from, key: 'bank_transfer_latest_deposit_date.from'))
                   .query_param(new_parameter(bank_transfer_latest_deposit_date_to, key: 'bank_transfer_latest_deposit_date.to'))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN'))
                   .array_serialization_format(ArraySerializationFormat::UN_INDEXED))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransactionHistoryList.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('429',
                                          'HTTP 429 Rate Limited: {$response.body#/code}',
                                          APIException)
                    .local_error_template('409',
                                          'HTTP 409 Conflict: {$response.body#/code}',
                                          APIException)
                    .local_error_template('500',
                                          'HTTP 500 Server Error: {$response.body#/code}',
                                          APIException)
                    .local_error_template('503',
                                          'HTTP 503 Unavailable: {$response.body#/code}',
                                          APIException)
                    .local_error_template('504',
                                          'HTTP 504 Timeout: {$response.body#/code}',
                                          APIException)
                    .local_error_template('default',
                                          'HTTP {$statusCode}: {$response.body#/code}',
                                          APIException))
        .execute
    end
  end
end
