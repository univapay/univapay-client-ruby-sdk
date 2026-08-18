# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'api_test_base'

class SubscriptionsApiTest < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.subscriptions
    @response_catcher = @controller.http_call_back
  end

  # Creates a new subscription.
  def test_create_subscription
    # Parameters for the API call
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'
    body = SubscriptionCreateRequest.from_hash(APIHelper.json_deserialize(
      '{"transaction_token_id":"11ef32a7-3a71-8662-803f-1bc27702eeec","amount"'\
      ':1000,"currency":"JPY","period":"monthly"}', false))

    # Perform the API call through the SDK function
    result = @controller.create_subscription(idempotency_key: idempotency_key,
                                             body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11ef335e-9aa5-c54a-8313-7f9847da313a","store_id":"11edf541-c42d-'\
      '653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32a7-3a71-8662-803f'\
      '-1bc27702eeec","amount":1250,"currency":"USD","amount_formatted":12.5,"'\
      'initial_amount":1000,"initial_amount_formatted":10.0,"subsequent_cycles'\
      '_start":null,"schedule_settings":{"start_on":"2024-06-26","zone_id":"As'\
      'ia/Tokyo","preserve_end_of_month":false,"retry_interval":"P7D","termina'\
      'tion_mode":"immediate"},"only_direct_currency":false,"first_charge_auth'\
      'orization_only":false,"status":"current","metadata":{"order_id":"ORD-98'\
      '7"},"mode":"live","created_on":"2024-06-26T01:51:28.627023Z","period":"'\
      'monthly","next_payment":{"id":"11ef3360-1f9a-c54a-8313-7f9847da313b","d'\
      'ue_date":"2024-07-26","zone_id":"Asia/Tokyo","amount":1250,"currency":"'\
      'USD","amount_formatted":12.5,"is_paid":false}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Lists all subscriptions across all stores.
  def test_list_all_subscriptions
    # Parameters for the API call
    search = 'order_id:12345'
    status = 'current'
    mode = 'live'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'

    # Perform the API call through the SDK function
    result = @controller.list_all_subscriptions(
      search: search, status: status, mode: mode, limit: limit, cursor: cursor,
      cursor_direction: cursor_direction
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
      '{"items":[{"id":"11ef3410-aaaa-4bcd-8e1f-1a2b3c4d5e60","store_id":"11ed'\
      'f541-c42d-653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef3413-dddd'\
      '-4ef0-b142-4d5e6f809193","amount":1250,"currency":"USD","amount_formatt'\
      'ed":12.5,"status":"current","mode":"live","created_on":"2024-06-26T01:5'\
      '1:28.627023Z","schedule_settings":{"zone_id":"Asia/Tokyo","retry_interv'\
      'al":"P7D","termination_mode":"immediate"},"merchant_name":"管理画面ガイド","st'\
      'ore_name":"管理画面ガイド_TEST店舗","payment_type":"card","next_payment_date":"2'\
      '024-07-26","user_data":{"type":"charge","cardholder_name":"taro yamada"'\
      ',"email":"taro@test.com","brand":"visa"}},{"id":"11ef3411-bbbb-4cde-9f2'\
      '0-2b3c4d5e6f71","store_id":"22af6520-d53e-764d-9d4e-ef01b66fa6d1","tran'\
      'saction_token_id":"11ef3414-eeee-4f01-c253-5e6f80919204","amount":3000,'\
      '"currency":"JPY","amount_formatted":3000,"status":"current","mode":"liv'\
      'e","created_on":"2024-07-11T09:20:00.627023Z","schedule_settings":{"zon'\
      'e_id":"Asia/Tokyo","retry_interval":"P7D","termination_mode":"immediate'\
      '"},"merchant_name":"管理画面ガイド","store_name":"管理画面ガイド_Online店舗","payment_t'\
      'ype":"card","next_payment_date":"2024-08-10","user_data":{"type":"charg'\
      'e","cardholder_name":"hanako suzuki","email":"hanako@test.com","brand":'\
      '"mastercard"}},{"id":"11ef3412-cccc-4def-a031-3c4d5e6f8082","store_id":'\
      '"33af7631-e64f-875e-ae5f-f012c77fb7e2","transaction_token_id":"11ef3415'\
      '-ffff-4012-d364-6f8091920315","amount":9800,"currency":"JPY","amount_fo'\
      'rmatted":9800,"status":"suspended","mode":"live","created_on":"2024-08-'\
      '15T13:05:22.627023Z","schedule_settings":{"zone_id":"Asia/Tokyo","retry'\
      '_interval":"P7D","termination_mode":"on_next_payment"},"merchant_name":'\
      '"管理画面ガイド","store_name":"管理画面ガイド_Osaka店舗","payment_type":"card","next_pa'\
      'yment_date":"2024-09-15","user_data":{"type":"charge","cardholder_name"'\
      ':"jiro tanaka","email":"jiro@test.com","brand":"jcb"}}],"has_more":fals'\
      'e,"total_hits":3}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Simulates the payment schedule that a subscription would follow, without creating a live subscription or a transaction token. Returns a bare array of the scheduled payments that would result from the given amount, currency, period (or cyclical period), and plan settings.
  def test_simulate_subscription_plan
    # Parameters for the API call
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'
    body = SubscriptionSimulationRequest.from_hash(APIHelper.json_deserialize(
      '{"amount":1000,"currency":"JPY","payment_type":"card","period":"monthly'\
      '","schedule_settings":{"zone_id":"Asia/Tokyo"}}', false))

    # Perform the API call through the SDK function
    result = @controller.simulate_subscription_plan(
      idempotency_key: idempotency_key, body: body
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
      '[{"due_date":"2026-09-01","zone_id":"Asia/Tokyo","amount":1000,"currenc'\
      'y":"JPY","is_paid":false,"is_last_payment":false,"successful_payment_da'\
      'te":null,"terminate_with_status":null,"retry_interval":null},{"due_date'\
      '":"2026-10-01","zone_id":"Asia/Tokyo","amount":1000,"currency":"JPY","i'\
      's_paid":false,"is_last_payment":true,"successful_payment_date":null,"te'\
      'rminate_with_status":null,"retry_interval":null}]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Lists all subscriptions for a specific store.
  def test_list_store_subscriptions
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    search = 'order_id:12345'
    status = 'current'
    mode = 'live'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'

    # Perform the API call through the SDK function
    result = @controller.list_store_subscriptions(
      store_id, search: search, status: status, mode: mode, limit: limit,
      cursor: cursor, cursor_direction: cursor_direction
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
      '{"items":[{"id":"11ef335e-9aa5-c54a-8313-7f9847da313a","store_id":"11ed'\
      'f541-c42d-653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32a7-3a71'\
      '-8662-803f-1bc27702eeec","amount":1250,"currency":"USD","amount_formatt'\
      'ed":12.5,"status":"current","mode":"live","created_on":"2024-06-26T01:5'\
      '1:28.627023Z","schedule_settings":{"zone_id":"Asia/Tokyo","retry_interv'\
      'al":"P7D","termination_mode":"immediate"},"merchant_name":"管理画面ガイド","st'\
      'ore_name":"管理画面ガイド_TEST店舗","payment_type":"card","next_payment_date":"2'\
      '024-07-26","user_data":{"type":"charge","cardholder_name":"taro yamada"'\
      ',"email":"test@test.com","brand":"visa"}},{"id":"11ef3401-1a2b-4c3d-8e4'\
      'f-5a6b7c8d9e0f","store_id":"11edf541-c42d-653c-8c3d-dfe0a55f95c0","tran'\
      'saction_token_id":"11ef3402-2b3c-4d5e-9f60-6b7c8d9e0f11","amount":5000,'\
      '"currency":"JPY","amount_formatted":5000,"status":"current","mode":"liv'\
      'e","created_on":"2024-07-01T10:00:00.627023Z","schedule_settings":{"zon'\
      'e_id":"Asia/Tokyo","retry_interval":"P7D","termination_mode":"immediate'\
      '"},"merchant_name":"管理画面ガイド","store_name":"管理画面ガイド_TEST店舗","payment_typ'\
      'e":"card","next_payment_date":"2024-08-01","user_data":{"type":"charge"'\
      ',"cardholder_name":"hanako suzuki","email":"hanako@test.com","brand":"m'\
      'astercard"}},{"id":"11ef3403-3c4d-5e6f-a071-7c8d9e0f1122","store_id":"1'\
      '1edf541-c42d-653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef3404-4'\
      'd5e-6f70-b182-8d9e0f112233","amount":9800,"currency":"JPY","amount_form'\
      'atted":9800,"status":"suspended","mode":"live","created_on":"2024-08-15'\
      'T13:05:22.627023Z","schedule_settings":{"zone_id":"Asia/Tokyo","retry_i'\
      'nterval":"P7D","termination_mode":"on_next_payment"},"merchant_name":"管'\
      '理画面ガイド","store_name":"管理画面ガイド_TEST店舗","payment_type":"card","next_payme'\
      'nt_date":"2024-09-15","user_data":{"type":"charge","cardholder_name":"j'\
      'iro tanaka","email":"jiro@test.com","brand":"jcb"}}],"has_more":false,"'\
      'total_hits":3}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Simulates the payment schedule that a subscription would follow for a specific store, without creating a live subscription or a transaction token. Returns a bare array of the scheduled payments that would result from the given amount, currency, period (or cyclical period), and plan settings.
  def test_simulate_store_subscription_plan
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'
    body = SubscriptionSimulationRequest.from_hash(APIHelper.json_deserialize(
      '{"amount":1000,"currency":"JPY","payment_type":"card","period":"monthly'\
      '","schedule_settings":{"zone_id":"Asia/Tokyo"}}', false))

    # Perform the API call through the SDK function
    result = @controller.simulate_store_subscription_plan(
      store_id, idempotency_key: idempotency_key, body: body
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
      '[{"due_date":"2026-09-01","zone_id":"Asia/Tokyo","amount":1000,"currenc'\
      'y":"JPY","is_paid":false,"is_last_payment":false,"successful_payment_da'\
      'te":null,"terminate_with_status":null,"retry_interval":null},{"due_date'\
      '":"2026-10-01","zone_id":"Asia/Tokyo","amount":1000,"currency":"JPY","i'\
      's_paid":false,"is_last_payment":true,"successful_payment_date":null,"te'\
      'rminate_with_status":null,"retry_interval":null}]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves the details of an existing subscription.  Supports internal polling to wait for status changes.
  def test_get_subscription
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = '11ef335e-9aa5-c54a-8313-7f9847da313a'
    polling = true

    # Perform the API call through the SDK function
    result = @controller.get_subscription(store_id, id, polling: polling)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11ef335e-9aa5-c54a-8313-7f9847da313a","store_id":"11edf541-c42d-'\
      '653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32a7-3a71-8662-803f'\
      '-1bc27702eeec","amount":1250,"currency":"USD","amount_formatted":12.5,"'\
      'initial_amount":null,"initial_amount_formatted":null,"subsequent_cycles'\
      '_start":null,"schedule_settings":{"start_on":"2024-07-01","zone_id":"As'\
      'ia/Tokyo","preserve_end_of_month":false,"retry_interval":"P7D","termina'\
      'tion_mode":"immediate"},"only_direct_currency":false,"first_charge_capt'\
      'ure_after":null,"first_charge_authorization_only":false,"status":"curre'\
      'nt","metadata":{"order_id":"12345"},"mode":"test","created_on":"2024-06'\
      '-26T01:51:28.627023Z","period":"monthly","next_payment":{"id":"11ef335e'\
      '-9ae2-8322-8e79-e7ba4b56234e","due_date":"2024-07-26","zone_id":"Asia/T'\
      'okyo","amount":1250,"currency":"USD","amount_formatted":12.5,"is_paid":'\
      'false,"is_last_payment":false,"created_on":"2024-06-26T01:51:29.025129Z'\
      '","updated_on":"2024-06-26T01:51:29.025129Z","retry_date":null}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Updates the configuration, payment method, or schedule of a specific subscription.
  def test_update_subscription
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'
    body = SubscriptionUpdateRequest.from_hash(APIHelper.json_deserialize(
      '{"metadata":{"order_id":"12345"},"schedule_settings":{"termination_mode'\
      '":"on_next_payment"}}', false))

    # Perform the API call through the SDK function
    result = @controller.update_subscription(store_id, id,
                                             idempotency_key: idempotency_key,
                                             body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11ef335e-9aa5-c54a-8313-7f9847da313a","store_id":"11edf541-c42d-'\
      '653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef3362-3700-c54a-9baa'\
      '-6f7e6527c9d9","amount":1250,"currency":"USD","amount_formatted":12.5,"'\
      'initial_amount":null,"initial_amount_formatted":null,"subsequent_cycles'\
      '_start":null,"schedule_settings":{"start_on":"2024-07-01","zone_id":"As'\
      'ia/Tokyo","preserve_end_of_month":false,"retry_interval":"P7D","termina'\
      'tion_mode":"on_next_payment"},"only_direct_currency":false,"first_charg'\
      'e_capture_after":null,"first_charge_authorization_only":false,"status":'\
      '"current","metadata":{"order_id":"12345"},"mode":"test","created_on":"2'\
      '024-06-26T01:51:28.627023Z","period":"monthly","next_payment":{"id":"11'\
      'ef335e-9ae2-8322-8e79-e7ba4b56234e","due_date":"2030-01-01","zone_id":"'\
      'Asia/Tokyo","amount":1250,"currency":"USD","amount_formatted":12.5,"is_'\
      'paid":false,"is_last_payment":false,"created_on":"2024-06-26T01:51:29.0'\
      '25129Z","updated_on":"2024-06-26T01:51:29.025129Z","retry_date":null}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Cancels an existing subscription. The subscription status will be  permanently changed to `canceled` and it cannot be resumed.  Please proceed with caution.
  def test_cancel_subscription
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

    # Perform the API call through the SDK function
    @controller.cancel_subscription(store_id, id)

    # Test response code
    assert_equal(204, @response_catcher.response.status_code)
  end

  # Retrieves a list of all historical and scheduled payments for a  specific subscription.
  def test_list_subscription_payments
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    subscription_id = '25d0fb2c-18ef-11e7-9dd3-db8fb7b820e7'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'

    # Perform the API call through the SDK function
    result = @controller.list_subscription_payments(
      store_id, subscription_id, limit: limit, cursor: cursor,
      cursor_direction: cursor_direction
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
      '{"items":[{"id":"11e89a0a-8cee-d660-b984-3fcaaed46e7c","due_date":"2018'\
      '-08-21","zone_id":"Asia/Tokyo","amount":10000,"currency":"JPY","amount_'\
      'formatted":10000,"is_paid":false,"is_last_payment":false,"created_on":"'\
      '2018-08-07T06:24:33.961256Z","updated_on":"2018-08-07T06:24:33.961256Z"'\
      '},{"id":"11e89a0a-8cc5-2662-9460-2b14b1a601ba","due_date":"2018-08-07",'\
      '"zone_id":"Asia/Tokyo","amount":1000,"currency":"JPY","amount_formatted'\
      '":1000,"is_paid":true,"is_last_payment":false,"created_on":"2018-08-07T'\
      '06:24:33.646223Z","updated_on":"2018-08-07T06:24:33.887760Z"}],"has_mor'\
      'e":false}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves the details of an individual payment associated with a specific subscription.
  def test_get_subscription_payment
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    subscription_id = '25d0fb2c-18ef-11e7-9dd3-db8fb7b820e7'
    payment_id = '11e89a0a-8cee-d660-b984-3fcaaed46e7c'

    # Perform the API call through the SDK function
    result = @controller.get_subscription_payment(store_id, subscription_id,
                                                  payment_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11e89a0a-8cee-d660-b984-3fcaaed46e7c","due_date":"2018-08-21","z'\
      'one_id":"Asia/Tokyo","amount":10000,"currency":"JPY","amount_formatted"'\
      ':10000,"is_paid":false,"is_last_payment":false,"created_on":"2018-08-07'\
      'T06:24:33.961256Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Updates properties of a specific scheduled payment for a subscription. Can be used to change the due date when permitted, mark the payment as paid, schedule a termination status, or set a retry interval.
  def test_update_subscription_payment
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    subscription_id = '25d0fb2c-18ef-11e7-9dd3-db8fb7b820e7'
    payment_id = '11e89a0a-8cee-d660-b984-3fcaaed46e7c'
    body = SubscriptionPatchPaymentRequest.from_hash(APIHelper.json_deserialize(
      '{"due_date":"2026-09-01","is_paid":false}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.update_subscription_payment(
      store_id, subscription_id, payment_id, body,
      idempotency_key: idempotency_key
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
      '{"id":"11e89a0a-8cee-d660-b984-3fcaaed46e7c","due_date":"2026-09-01","z'\
      'one_id":"Asia/Tokyo","amount":10000,"currency":"JPY","amount_formatted"'\
      ':10000,"is_paid":false,"is_last_payment":false,"created_on":"2018-08-07'\
      'T06:24:33.961256Z","updated_on":"2026-04-22T06:00:00.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves the most recent charge created for a specific subscription. Returns 404 if no charges have been attempted yet.
  def test_get_subscription_latest_charge
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    subscription_id = '25d0fb2c-18ef-11e7-9dd3-db8fb7b820e7'

    # Perform the API call through the SDK function
    result = @controller.get_subscription_latest_charge(store_id,
                                                        subscription_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"6efb4e5c-690a-40f3-a4f1-0e19c5f84e98","store_id":"11edf541-c42d-'\
      '653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32a7-3a71-8662-803f'\
      '-1bc27702eeec","transaction_token_type":"recurring","subscription_id":"'\
      '11ef335e-9aa5-c54a-8313-7f9847da313a","requested_amount":1250,"requeste'\
      'd_currency":"USD","requested_amount_formatted":12.5,"charged_amount":12'\
      '50,"charged_currency":"USD","charged_amount_formatted":12.5,"only_direc'\
      't_currency":false,"status":"successful","error":null,"mode":"test","cre'\
      'ated_on":"2024-06-26T01:51:30.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves a paginated list of charges linked to a subscription. Backend search uses the same charge search surface as normal charge listing and adds a subscription filter for the requested subscription.
  def test_list_subscription_charges
    # Parameters for the API call
    merchant_id = '01234567-89ab-cdef-0123-456789abcdef'
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    subscription_id = '25d0fb2c-18ef-11e7-9dd3-db8fb7b820e7'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'

    # Perform the API call through the SDK function
    result = @controller.list_subscription_charges(
      merchant_id, store_id, subscription_id, limit: limit, cursor: cursor,
      cursor_direction: cursor_direction
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
      '{"items":[{"id":"6efb4e5c-690a-40f3-a4f1-0e19c5f84e98","store_id":"11ed'\
      'f541-c42d-653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32a7-3a71'\
      '-8662-803f-1bc27702eeec","transaction_token_type":"recurring","subscrip'\
      'tion_id":"11ef335e-9aa5-c54a-8313-7f9847da313a","requested_amount":1250'\
      ',"requested_currency":"USD","requested_amount_formatted":12.5,"charged_'\
      'amount":1250,"charged_currency":"USD","charged_amount_formatted":12.5,"'\
      'only_direct_currency":false,"status":"successful","error":{},"mode":"te'\
      'st","created_on":"2024-06-26T01:51:30.000000Z"}],"has_more":false,"tota'\
      'l_hits":1}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves a paginated list of all charge attempts made for a specific scheduled payment of a subscription. Useful for inspecting retry history.
  def test_list_charges_for_subscription_payment
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    subscription_id = '25d0fb2c-18ef-11e7-9dd3-db8fb7b820e7'
    payment_id = '11e89a0a-8cee-d660-b984-3fcaaed46e7c'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'

    # Perform the API call through the SDK function
    result = @controller.list_charges_for_subscription_payment(
      store_id, subscription_id, payment_id, limit: limit, cursor: cursor,
      cursor_direction: cursor_direction
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
      '{"items":[{"id":"6efb4e5c-690a-40f3-a4f1-0e19c5f84e98","store_id":"11ed'\
      'f541-c42d-653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32a7-3a71'\
      '-8662-803f-1bc27702eeec","transaction_token_type":"recurring","subscrip'\
      'tion_id":"11ef335e-9aa5-c54a-8313-7f9847da313a","requested_amount":1250'\
      ',"requested_currency":"USD","requested_amount_formatted":12.5,"charged_'\
      'amount":1250,"charged_currency":"USD","charged_amount_formatted":12.5,"'\
      'only_direct_currency":false,"status":"successful","error":{},"mode":"te'\
      'st","created_on":"2024-06-26T01:51:30.000000Z"}],"has_more":false,"tota'\
      'l_hits":1}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Suspends a subscription that is currently `current` or `unpaid`. The `termination_mode` controls when the suspension takes effect: `immediate` (default) suspends right away, `on_next_payment` waits until the next scheduled payment date before suspending.
  def test_suspend_subscription
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    subscription_id = '11ef335e-9aa5-c54a-8313-7f9847da313a'
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'
    body = SubscriptionSuspendRequest.from_hash(APIHelper.json_deserialize(
      '{"schedule_settings":{"termination_mode":"on_next_payment"}}', false))

    # Perform the API call through the SDK function
    result = @controller.suspend_subscription(store_id, subscription_id,
                                              idempotency_key: idempotency_key,
                                              body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11ef335e-9aa5-c54a-8313-7f9847da313a","store_id":"11edf541-c42d-'\
      '653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32a7-3a71-8662-803f'\
      '-1bc27702eeec","amount":1250,"currency":"USD","amount_formatted":12.5,"'\
      'schedule_settings":{"start_on":"2024-07-01","zone_id":"Asia/Tokyo","pre'\
      'serve_end_of_month":false,"retry_interval":"P7D","termination_mode":"on'\
      '_next_payment"},"status":"suspended","mode":"test","created_on":"2024-0'\
      '6-26T01:51:28.627023Z","period":"monthly"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Resumes a subscription that is currently `suspended`, setting its status back to `unpaid` and rescheduling the next payment. No request body is required.
  def test_unsuspend_subscription
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    subscription_id = '11ef335e-9aa5-c54a-8313-7f9847da313a'
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.unsuspend_subscription(
      store_id, subscription_id, idempotency_key: idempotency_key
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
      '{"id":"11ef335e-9aa5-c54a-8313-7f9847da313a","store_id":"11edf541-c42d-'\
      '653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32a7-3a71-8662-803f'\
      '-1bc27702eeec","amount":1250,"currency":"USD","amount_formatted":12.5,"'\
      'schedule_settings":{"start_on":"2024-07-01","zone_id":"Asia/Tokyo","pre'\
      'serve_end_of_month":false,"retry_interval":"P7D","termination_mode":"im'\
      'mediate"},"status":"unpaid","mode":"test","created_on":"2024-06-26T01:5'\
      '1:28.627023Z","period":"monthly"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Replaces the payment method (transaction token) used for a subscription. Useful when a card expires or a customer wants to switch payment methods. The new token must belong to the same store, be active, and match the subscription's processing mode (live/test). One-time tokens are not accepted; use a recurring or subscription token.
  def test_update_subscription_token
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    subscription_id = '11ef335e-9aa5-c54a-8313-7f9847da313a'
    body = SubscriptionPatchTokenRequest.from_hash(APIHelper.json_deserialize(
      '{"transaction_token_id":"11ef3362-3700-c54a-9baa-6f7e6527c9d9"}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.update_subscription_token(
      store_id, subscription_id, body, idempotency_key: idempotency_key
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
      '{"id":"11ef335e-9aa5-c54a-8313-7f9847da313a","store_id":"11edf541-c42d-'\
      '653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef3362-3700-c54a-9baa'\
      '-6f7e6527c9d9","amount":1250,"currency":"USD","amount_formatted":12.5,"'\
      'schedule_settings":{"start_on":"2024-07-01","zone_id":"Asia/Tokyo","pre'\
      'serve_end_of_month":false,"retry_interval":"P7D","termination_mode":"im'\
      'mediate"},"status":"current","mode":"test","created_on":"2024-06-26T01:'\
      '51:28.627023Z","period":"monthly"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end