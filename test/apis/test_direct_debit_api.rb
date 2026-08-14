# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'api_test_base'

class DirectDebitApiTest < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.direct_debit
    @response_catcher = @controller.http_call_back
  end

  # Retrieves the merchant's direct debit configuration — whether direct debit is enabled and which monthly debit cycle applies.
  def test_get_direct_debit_configuration
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

    # Perform the API call through the SDK function
    result = @controller.get_direct_debit_configuration(merchant_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"legacy_id":"1283794","enabled":true,"debit_date":"fourteen","consigno'\
      'r_code":"135456","classifier":"99","signature":"モモサン"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves which direct debit email notifications the merchant has opted into.
  def test_get_direct_debit_notification_configuration
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

    # Perform the API call through the SDK function
    result = @controller.get_direct_debit_notification_configuration(
      merchant_id
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"notify_deadline_mailing":true,"notify_deadline_debit":true,"notify_de'\
      'bit_update":false}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves the key dates for the debit cycle currently in progress, based on the merchant's configured cycle. Compare `merchant_bank_transfer_upload_deadline` against today to decide whether transfers can still be registered or edited this month.
  def test_get_direct_debit_current_schedule
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

    # Perform the API call through the SDK function
    result = @controller.get_direct_debit_current_schedule(merchant_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"merchant_bank_account_transfer_date":"2026-03-14","merchant_bank_acco'\
      'unt_registration_deadline":"2026-02-20","merchant_bank_transfer_upload_'\
      'deadline":"2026-03-04","platform_result_registration_date":"2026-03-24"'\
      ',"platform_scheduled_payout":"2026-03-31"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Lists the consumer bank accounts registered for direct debit under this merchant.
  def test_list_direct_debit_bank_accounts
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    limit = 10
    cursor = '1098116'
    cursor_direction = 'desc'
    user_number = 'SD02688328'
    bank_account_id = '1098116'
    bank_code = '0012'
    bank_name = 'ﾗｸﾃﾝｷﾞﾝｺｳ'
    branch_code = '120'
    bank_account_type = 'regular'
    bank_account_number = '1234567'
    bank_account_name = 'ﾀﾅｶﾕﾐｺ'
    registration_origin = 'merchant_console'
    bank_account_status = 'active'
    from = '2026-04-01T00:00:00.000Z'
    to = '2026-04-30T23:59:59.999Z'

    # Perform the API call through the SDK function
    result = @controller.list_direct_debit_bank_accounts(
      merchant_id, limit: limit, cursor: cursor,
      cursor_direction: cursor_direction, user_number: user_number,
      bank_account_id: bank_account_id, bank_code: bank_code,
      bank_name: bank_name, branch_code: branch_code,
      bank_account_type: bank_account_type,
      bank_account_number: bank_account_number,
      bank_account_name: bank_account_name,
      registration_origin: registration_origin,
      bank_account_status: bank_account_status, from: from, to: to
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"items":[{"id":"1098116","legacy_store_id":"1283794","merchant_id":"01'\
      '234567-89ab-cdef-0123-456789abcdef","user_number":"SD02688328","bank_co'\
      'de":"0012","bank_name":"ﾗｸﾃﾝｷﾞﾝｺｳ","branch_code":"120","bank_account_ty'\
      'pe":"regular","bank_account_name":"ﾀﾅｶﾕﾐｺ","bank_account_number":"12345'\
      '67","registration_origin":"merchant_console","status":"active","created'\
      '_on":"2026-04-09T07:35:50.000Z","updated_on":"2026-04-09T07:35:50.000Z"'\
      '},{"id":"1098117","legacy_store_id":"1283794","merchant_id":"01234567-8'\
      '9ab-cdef-0123-456789abcdef","user_number":"SD02688329","bank_code":"000'\
      '9","bank_name":"ﾐﾂｲｽﾐﾄﾓ","branch_code":"221","bank_account_type":"curre'\
      'nt","bank_account_name":"ｽｽﾞｷﾀﾛｳ","bank_account_number":"7654321","regi'\
      'stration_origin":"anywhere","status":"inactive","created_on":"2026-04-1'\
      '0T09:12:04.000Z","updated_on":"2026-04-12T11:03:41.000Z"}],"has_more":f'\
      'alse}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Registers a consumer bank account for direct debit. The account is created and then verified against the bank, so it starts out unusable — poll its `status` until it becomes `active` (or `registration_failed`) before scheduling transfers against it.
  def test_create_direct_debit_bank_account
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    body = DirectDebitBankAccountCreateRequest.from_hash(APIHelper.json_deserialize(
      '{"user_number":"SD02688328","bank_code":"0012","bank_name":"ﾗｸﾃﾝｷﾞﾝｺｳ",'\
      '"branch_code":"120","bank_account_type":"regular","bank_account_name":"'\
      'ﾀﾅｶﾕﾐｺ","bank_account_number":"1234567"}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.create_direct_debit_bank_account(
      merchant_id, body, idempotency_key: idempotency_key
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"1098116","legacy_store_id":"1283794","merchant_id":"01234567-89a'\
      'b-cdef-0123-456789abcdef","user_number":"SD02688328","bank_code":"0012"'\
      ',"bank_name":"ﾗｸﾃﾝｷﾞﾝｺｳ","branch_code":"120","bank_account_type":"regul'\
      'ar","bank_account_name":"ﾀﾅｶﾕﾐｺ","bank_account_number":"1234567","regis'\
      'tration_origin":"merchant_console","status":"active","created_on":"2026'\
      '-04-09T07:35:50.000Z","updated_on":"2026-04-09T07:35:50.000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves a single registered bank account, including its current verification status.
  def test_get_direct_debit_bank_account
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    bank_account_id = '1098116'

    # Perform the API call through the SDK function
    result = @controller.get_direct_debit_bank_account(merchant_id,
                                                       bank_account_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"1098116","legacy_store_id":"1283794","merchant_id":"01234567-89a'\
      'b-cdef-0123-456789abcdef","user_number":"SD02688328","bank_code":"0012"'\
      ',"bank_name":"ﾗｸﾃﾝｷﾞﾝｺｳ","branch_code":"120","bank_account_type":"regul'\
      'ar","bank_account_name":"ﾀﾅｶﾕﾐｺ","bank_account_number":"1234567","regis'\
      'tration_origin":"merchant_console","status":"active","created_on":"2026'\
      '-04-09T07:35:50.000Z","updated_on":"2026-04-09T07:35:50.000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Updates a registered bank account. Changing bank details re-triggers verification with the bank. Transfers already registered keep the details they were created with.
  def test_update_direct_debit_bank_account
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    bank_account_id = '1098116'
    body = DirectDebitBankAccountUpdateRequest.from_hash(APIHelper.json_deserialize(
      '{"bank_account_name":"ﾀﾅｶﾕﾐｺ"}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.update_direct_debit_bank_account(
      merchant_id, bank_account_id, body, idempotency_key: idempotency_key
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"1098116","legacy_store_id":"1283794","merchant_id":"01234567-89a'\
      'b-cdef-0123-456789abcdef","user_number":"SD02688328","bank_code":"0012"'\
      ',"bank_name":"ﾗｸﾃﾝｷﾞﾝｺｳ","branch_code":"120","bank_account_type":"regul'\
      'ar","bank_account_name":"ﾀﾅｶﾕﾐｺ","bank_account_number":"1234567","regis'\
      'tration_origin":"merchant_console","status":"active","created_on":"2026'\
      '-04-09T07:35:50.000Z","updated_on":"2026-04-09T07:35:50.000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Deactivates a bank account so no further transfers can be registered against it. The record is retained (status becomes `inactive`) rather than deleted, and can be re-enabled later.
  def test_deactivate_direct_debit_bank_account
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    bank_account_id = '1098116'

    # Perform the API call through the SDK function
    result = @controller.deactivate_direct_debit_bank_account(merchant_id,
                                                              bank_account_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"1098116","legacy_store_id":"1283794","merchant_id":"01234567-89a'\
      'b-cdef-0123-456789abcdef","user_number":"SD02688328","bank_code":"0012"'\
      ',"bank_name":"ﾗｸﾃﾝｷﾞﾝｺｳ","branch_code":"120","bank_account_type":"regul'\
      'ar","bank_account_name":"ﾀﾅｶﾕﾐｺ","bank_account_number":"1234567","regis'\
      'tration_origin":"merchant_console","status":"inactive","created_on":"20'\
      '26-04-09T07:35:50.000Z","updated_on":"2026-04-14T02:11:07.000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Returns a deactivated bank account to `active` so transfers can be registered against it again. The account must currently be `inactive`.
  def test_reenable_direct_debit_bank_account
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    bank_account_id = '1098116'
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.reenable_direct_debit_bank_account(
      merchant_id, bank_account_id, idempotency_key: idempotency_key
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"1098116","legacy_store_id":"1283794","merchant_id":"01234567-89a'\
      'b-cdef-0123-456789abcdef","user_number":"SD02688328","bank_code":"0012"'\
      ',"bank_name":"ﾗｸﾃﾝｷﾞﾝｺｳ","branch_code":"120","bank_account_type":"regul'\
      'ar","bank_account_name":"ﾀﾅｶﾕﾐｺ","bank_account_number":"1234567","regis'\
      'tration_origin":"merchant_console","status":"active","created_on":"2026'\
      '-04-09T07:35:50.000Z","updated_on":"2026-04-09T07:35:50.000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Schedules a pull of funds from an active bank account. The transfer is queued for the merchant's next debit cycle and stays editable until that cycle's upload deadline passes.
  def test_create_direct_debit_bank_transfer
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    bank_account_id = '1098116'
    body = DirectDebitBankTransferCreateRequest.from_hash(APIHelper.json_deserialize(
      '{"amount":1000}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.create_direct_debit_bank_transfer(
      merchant_id, bank_account_id, body, idempotency_key: idempotency_key
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"2594976","legacy_store_id":"1283794","merchant_id":"01234567-89a'\
      'b-cdef-0123-456789abcdef","bank_account_id":"1098116","user_number":"SD'\
      '02688328","bank_code":"0012","bank_name":"ﾗｸﾃﾝｷﾞﾝｺｳ","branch_code":"120'\
      '","bank_account_type":"regular","bank_account_name":"ﾀﾅｶﾕﾐｺ","bank_acco'\
      'unt_number":"1234567","amount":1000,"debit_date":"fourteen","calculated'\
      '_debit_date":"2026-03-14","lock":"unlocked","status":"awaiting","error"'\
      ':null,"created_on":"2026-04-09T07:35:50.000Z","updated_on":"2026-04-09T'\
      '07:35:50.000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Lists the direct debit transfers registered under this merchant, across all bank accounts.
  def test_list_direct_debit_bank_transfers
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    limit = 10
    cursor = '1098116'
    cursor_direction = 'desc'
    bank_transfer_id = '2594976'
    bank_transfer_start = '2026-01'
    bank_transfer_end = '2026-03'
    debit_date = 'fourteen'
    user_number = 'SD02688328'
    bank_account_number = '1234567'
    bank_account_name = 'ﾀﾅｶﾕﾐｺ'
    lock_status = 'unlocked'
    bank_transfer_status = 'awaiting'

    # Perform the API call through the SDK function
    result = @controller.list_direct_debit_bank_transfers(
      merchant_id, limit: limit, cursor: cursor,
      cursor_direction: cursor_direction, bank_transfer_id: bank_transfer_id,
      bank_transfer_start: bank_transfer_start,
      bank_transfer_end: bank_transfer_end, debit_date: debit_date,
      user_number: user_number, bank_account_number: bank_account_number,
      bank_account_name: bank_account_name, lock_status: lock_status,
      bank_transfer_status: bank_transfer_status
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"items":[{"id":"2594976","legacy_store_id":"1283794","merchant_id":"01'\
      '234567-89ab-cdef-0123-456789abcdef","bank_account_id":"1098116","user_n'\
      'umber":"SD02688328","bank_code":"0012","bank_name":"ﾗｸﾃﾝｷﾞﾝｺｳ","branch_'\
      'code":"120","bank_account_type":"regular","bank_account_name":"ﾀﾅｶﾕﾐｺ",'\
      '"bank_account_number":"1234567","amount":1000,"debit_date":"fourteen","'\
      'calculated_debit_date":"2026-03-14","lock":"unlocked","status":"awaitin'\
      'g","error":null,"created_on":"2026-04-09T07:35:50.000Z","updated_on":"2'\
      '026-04-09T07:35:50.000Z"},{"id":"2594977","legacy_store_id":"1283794","'\
      'merchant_id":"01234567-89ab-cdef-0123-456789abcdef","bank_account_id":"'\
      '1098117","user_number":"SD02688329","bank_code":"0009","bank_name":"ﾐﾂｲ'\
      'ｽﾐﾄﾓ","branch_code":"221","bank_account_type":"current","bank_account_n'\
      'ame":"ｽｽﾞｷﾀﾛｳ","bank_account_number":"7654321","amount":1850,"debit_dat'\
      'e":"twenty_seven","calculated_debit_date":"2026-03-27","lock":"locked",'\
      '"status":"failed","error":"insufficient_funds","created_on":"2026-04-10'\
      'T09:12:04.000Z","updated_on":"2026-04-12T11:03:41.000Z"}],"has_more":fa'\
      'lse}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves a single transfer. Poll this after the cycle's result registration date to pick up the outcome and, on failure, the bank's reason.
  def test_get_direct_debit_bank_transfer
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    bank_transfer_id = '2594976'

    # Perform the API call through the SDK function
    result = @controller.get_direct_debit_bank_transfer(merchant_id,
                                                        bank_transfer_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"2594976","legacy_store_id":"1283794","merchant_id":"01234567-89a'\
      'b-cdef-0123-456789abcdef","bank_account_id":"1098116","user_number":"SD'\
      '02688328","bank_code":"0012","bank_name":"ﾗｸﾃﾝｷﾞﾝｺｳ","branch_code":"120'\
      '","bank_account_type":"regular","bank_account_name":"ﾀﾅｶﾕﾐｺ","bank_acco'\
      'unt_number":"1234567","amount":1000,"debit_date":"fourteen","calculated'\
      '_debit_date":"2026-03-14","lock":"unlocked","status":"awaiting","error"'\
      ':null,"created_on":"2026-04-09T07:35:50.000Z","updated_on":"2026-04-09T'\
      '07:35:50.000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Changes a scheduled transfer's amount. Only permitted while the transfer is `unlocked` — once its cycle's upload deadline passes the amount is fixed.
  def test_update_direct_debit_bank_transfer
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    bank_transfer_id = '2594976'
    body = DirectDebitBankTransferPatchRequest.from_hash(APIHelper.json_deserialize(
      '{"amount":1850}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.update_direct_debit_bank_transfer(
      merchant_id, bank_transfer_id, body, idempotency_key: idempotency_key
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"2594976","legacy_store_id":"1283794","merchant_id":"01234567-89a'\
      'b-cdef-0123-456789abcdef","bank_account_id":"1098116","user_number":"SD'\
      '02688328","bank_code":"0012","bank_name":"ﾗｸﾃﾝｷﾞﾝｺｳ","branch_code":"120'\
      '","bank_account_type":"regular","bank_account_name":"ﾀﾅｶﾕﾐｺ","bank_acco'\
      'unt_number":"1234567","amount":1000,"debit_date":"fourteen","calculated'\
      '_debit_date":"2026-03-14","lock":"unlocked","status":"awaiting","error"'\
      ':null,"created_on":"2026-04-09T07:35:50.000Z","updated_on":"2026-04-09T'\
      '07:35:50.000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Cancels a scheduled transfer so it is not sent to the bank. Only permitted while the transfer is `unlocked`.
  def test_delete_direct_debit_bank_transfer
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    bank_transfer_id = '2594976'

    # Perform the API call through the SDK function
    @controller.delete_direct_debit_bank_transfer(merchant_id, bank_transfer_id)

    # Test response code
    assert_equal(204, @response_catcher.response.status_code)
  end

end