# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # DirectDebitApi
  class DirectDebitApi < BaseApi
    # Retrieves the merchant's direct debit configuration — whether direct debit
    # is enabled and which monthly debit cycle applies.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_direct_debit_configuration(merchant_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/merchants/{merchantId}/configuration',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitMerchantConfiguration.method(:from_hash))
                    .is_api_response(true)
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
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
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

    # Retrieves which direct debit email notifications the merchant has opted
    # into.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_direct_debit_notification_configuration(merchant_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/merchants/{merchantId}/notification-configuration',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitNotificationConfiguration.method(:from_hash))
                    .is_api_response(true)
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
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
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

    # Retrieves the key dates for the debit cycle currently in progress, based
    # on the merchant's configured cycle. Compare
    # `merchant_bank_transfer_upload_deadline` against today to decide whether
    # transfers can still be registered or edited this month.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_direct_debit_current_schedule(merchant_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/merchants/{merchantId}/schedules/current',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitSchedule.method(:from_hash))
                    .is_api_response(true)
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
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
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

    # Lists the consumer bank accounts registered for direct debit under this
    # merchant.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [String] cursor Optional parameter: Cursor pointing to the resource
    # after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @param [String] user_number Optional parameter: Filter by the merchant's
    # own membership number for the consumer (会員番号).
    # @param [String] bank_account_id Optional parameter: Filter by a single
    # bank account ID.
    # @param [String] bank_code Optional parameter: Filter by the 4-digit bank
    # code (銀行コード).
    # @param [String] bank_name Optional parameter: Filter by bank name in
    # half-width katakana (銀行名).
    # @param [String] branch_code Optional parameter: Filter by the 3-digit
    # branch code (支店コード).
    # @param [DirectDebitBankAccountType] bank_account_type Optional parameter:
    # Filter by deposit account type (預金種類).
    # @param [String] bank_account_number Optional parameter: Filter by the
    # 7-digit account number (口座番号).
    # @param [String] bank_account_name Optional parameter: Filter by account
    # holder name in half-width katakana (口座名義).
    # @param [DirectDebitRegistrationOrigin] registration_origin Optional
    # parameter: Filter by where the bank account was registered from.
    # @param [DirectDebitBankAccountStatus] bank_account_status Optional
    # parameter: Filter by bank account status. Omit to return every status.
    # @param [String] from Optional parameter: Show bank accounts created on or
    # after this date (ISO-8601).
    # @param [String] to Optional parameter: Show bank accounts created before
    # this date (ISO-8601).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_direct_debit_bank_accounts(merchant_id,
                                        limit: 10,
                                        cursor: nil,
                                        cursor_direction: CursorDirectionQuery::DESC,
                                        user_number: nil,
                                        bank_account_id: nil,
                                        bank_code: nil,
                                        bank_name: nil,
                                        branch_code: nil,
                                        bank_account_type: nil,
                                        bank_account_number: nil,
                                        bank_account_name: nil,
                                        registration_origin: nil,
                                        bank_account_status: nil,
                                        from: nil,
                                        to: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/merchants/{merchantId}/bank-accounts',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .query_param(new_parameter(user_number, key: 'user_number'))
                   .query_param(new_parameter(bank_account_id, key: 'bank_account_id'))
                   .query_param(new_parameter(bank_code, key: 'bank_code'))
                   .query_param(new_parameter(bank_name, key: 'bank_name'))
                   .query_param(new_parameter(branch_code, key: 'branch_code'))
                   .query_param(new_parameter(bank_account_type, key: 'bank_account_type'))
                   .query_param(new_parameter(bank_account_number, key: 'bank_account_number'))
                   .query_param(new_parameter(bank_account_name, key: 'bank_account_name'))
                   .query_param(new_parameter(registration_origin, key: 'registration_origin'))
                   .query_param(new_parameter(bank_account_status, key: 'bank_account_status'))
                   .query_param(new_parameter(from, key: 'from'))
                   .query_param(new_parameter(to, key: 'to'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitBankAccountList.method(:from_hash))
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

    # Registers a consumer bank account for direct debit. The account is created
    # and then verified against the bank, so it starts out unusable — poll its
    # `status` until it becomes `active` (or `registration_failed`) before
    # scheduling transfers against it.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [DirectDebitBankAccountCreateRequest] body Required parameter:
    # Request payload for registering a consumer bank account.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def create_direct_debit_bank_account(merchant_id,
                                         body,
                                         idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/merchants/{merchantId}/bank-accounts',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .is_required(true))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitBankAccount.method(:from_hash))
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

    # Retrieves a single registered bank account, including its current
    # verification status.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [String] bank_account_id Required parameter: The unique identifier
    # of the direct debit bank account.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_direct_debit_bank_account(merchant_id,
                                      bank_account_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/merchants/{merchantId}/bank-accounts/{bankAccountId}',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(bank_account_id, key: 'bankAccountId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitBankAccount.method(:from_hash))
                    .is_api_response(true)
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
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
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

    # Updates a registered bank account. Changing bank details re-triggers
    # verification with the bank. Transfers already registered keep the details
    # they were created with.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [String] bank_account_id Required parameter: The unique identifier
    # of the direct debit bank account.
    # @param [DirectDebitBankAccountUpdateRequest] body Required parameter:
    # Request payload for updating a registered bank account.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def update_direct_debit_bank_account(merchant_id,
                                         bank_account_id,
                                         body,
                                         idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/merchants/{merchantId}/bank-accounts/{bankAccountId}',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(bank_account_id, key: 'bankAccountId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .is_required(true))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitBankAccount.method(:from_hash))
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

    # Deactivates a bank account so no further transfers can be registered
    # against it. The record is retained (status becomes `inactive`) rather than
    # deleted, and can be re-enabled later.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [String] bank_account_id Required parameter: The unique identifier
    # of the direct debit bank account.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def deactivate_direct_debit_bank_account(merchant_id,
                                             bank_account_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/merchants/{merchantId}/bank-accounts/{bankAccountId}',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(bank_account_id, key: 'bankAccountId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitBankAccount.method(:from_hash))
                    .is_api_response(true)
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
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
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

    # Returns a deactivated bank account to `active` so transfers can be
    # registered against it again. The account must currently be `inactive`.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [String] bank_account_id Required parameter: The unique identifier
    # of the direct debit bank account.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def reenable_direct_debit_bank_account(merchant_id,
                                           bank_account_id,
                                           idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/merchants/{merchantId}/bank-accounts/{bankAccountId}/re-enable',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(bank_account_id, key: 'bankAccountId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitBankAccount.method(:from_hash))
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

    # Schedules a pull of funds from an active bank account. The transfer is
    # queued for the merchant's next debit cycle and stays editable until that
    # cycle's upload deadline passes.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [String] bank_account_id Required parameter: The unique identifier
    # of the direct debit bank account.
    # @param [DirectDebitBankTransferCreateRequest] body Required parameter:
    # Request payload for scheduling a transfer, in JPY.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def create_direct_debit_bank_transfer(merchant_id,
                                          bank_account_id,
                                          body,
                                          idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/merchants/{merchantId}/bank-accounts/{bankAccountId}/bank-transfers',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(bank_account_id, key: 'bankAccountId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .is_required(true))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitBankTransfer.method(:from_hash))
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

    # Lists the direct debit transfers registered under this merchant, across
    # all bank accounts.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [String] cursor Optional parameter: Cursor pointing to the resource
    # after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @param [String] bank_transfer_id Optional parameter: Filter by a single
    # bank transfer ID.
    # @param [String] bank_transfer_start Optional parameter: Start of the
    # year-month range in which the transfer is scheduled to occur.
    # @param [String] bank_transfer_end Optional parameter: End of the
    # year-month range in which the transfer is scheduled to occur.
    # @param [DirectDebitDebitDate] debit_date Optional parameter: Filter by
    # monthly debit cycle.
    # @param [String] user_number Optional parameter: Filter by the merchant's
    # own membership number for the consumer (会員番号).
    # @param [String] bank_account_number Optional parameter: Filter by the
    # 7-digit account number (口座番号).
    # @param [String] bank_account_name Optional parameter: Filter by account
    # holder name in half-width katakana (口座名義).
    # @param [DirectDebitBankTransferLock] lock_status Optional parameter:
    # Filter by lock status. Omit to return both locked and unlocked
    # transfers.
    # @param [DirectDebitBankTransferStatus] bank_transfer_status Optional
    # parameter: Filter by transfer status. Omit to return every status.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_direct_debit_bank_transfers(merchant_id,
                                         limit: 10,
                                         cursor: nil,
                                         cursor_direction: CursorDirectionQuery::DESC,
                                         bank_transfer_id: nil,
                                         bank_transfer_start: nil,
                                         bank_transfer_end: nil,
                                         debit_date: nil,
                                         user_number: nil,
                                         bank_account_number: nil,
                                         bank_account_name: nil,
                                         lock_status: nil,
                                         bank_transfer_status: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/merchants/{merchantId}/bank-transfers',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .query_param(new_parameter(bank_transfer_id, key: 'bank_transfer_id'))
                   .query_param(new_parameter(bank_transfer_start, key: 'bank_transfer_start'))
                   .query_param(new_parameter(bank_transfer_end, key: 'bank_transfer_end'))
                   .query_param(new_parameter(debit_date, key: 'debit_date'))
                   .query_param(new_parameter(user_number, key: 'user_number'))
                   .query_param(new_parameter(bank_account_number, key: 'bank_account_number'))
                   .query_param(new_parameter(bank_account_name, key: 'bank_account_name'))
                   .query_param(new_parameter(lock_status, key: 'lock_status'))
                   .query_param(new_parameter(bank_transfer_status, key: 'bank_transfer_status'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitBankTransferList.method(:from_hash))
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

    # Retrieves a single transfer. Poll this after the cycle's result
    # registration date to pick up the outcome and, on failure, the bank's
    # reason.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [String] bank_transfer_id Required parameter: The unique identifier
    # of the direct debit bank transfer.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_direct_debit_bank_transfer(merchant_id,
                                       bank_transfer_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/merchants/{merchantId}/bank-transfers/{bankTransferId}',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(bank_transfer_id, key: 'bankTransferId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitBankTransfer.method(:from_hash))
                    .is_api_response(true)
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
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
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

    # Changes a scheduled transfer's amount. Only permitted while the transfer
    # is `unlocked` — once its cycle's upload deadline passes the amount is
    # fixed.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [String] bank_transfer_id Required parameter: The unique identifier
    # of the direct debit bank transfer.
    # @param [DirectDebitBankTransferPatchRequest] body Required parameter:
    # Request payload for changing the transfer amount.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def update_direct_debit_bank_transfer(merchant_id,
                                          bank_transfer_id,
                                          body,
                                          idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/merchants/{merchantId}/bank-transfers/{bankTransferId}',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(bank_transfer_id, key: 'bankTransferId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .is_required(true))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DirectDebitBankTransfer.method(:from_hash))
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

    # Cancels a scheduled transfer so it is not sent to the bank. Only permitted
    # while the transfer is `unlocked`.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [String] bank_transfer_id Required parameter: The unique identifier
    # of the direct debit bank transfer.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def delete_direct_debit_bank_transfer(merchant_id,
                                          bank_transfer_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/merchants/{merchantId}/bank-transfers/{bankTransferId}',
                                     Server::DIRECTDEBIT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(bank_transfer_id, key: 'bankTransferId')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .is_response_void(true)
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
