# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'api_test_base'

class TransactionHistoryApiTest < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.transaction_history
    @response_catcher = @controller.http_call_back
  end

  # Returns a paginated, searchable history of charges and refunds across all of the merchant's stores, combining both resource types into a single unified row shape.
  def test_list_transaction_history
    # Parameters for the API call
    mode = 'test'
    short_id = '8bfc29'
    from = '2026-04-01T00:00:00Z'
    to = '2026-04-30T23:59:59.999Z'
    status = 'successful'
    type = 'charge'
    search = 'Taro Yamada'
    email = 'user@example.com'
    id = '11ef0000-0000-4000-8000-000000000070'
    metadata = 'order_id: 12345'
    card_exp = '2026-04'
    card_last_four = '4242'
    cardholder = 'TARO YAMADA'
    card_brand = APIHelper.json_deserialize(
      '["visa"]', false)
    brand = APIHelper.json_deserialize(
      '["visa"]', false)
    brands = APIHelper.json_deserialize(
      '["visa","jcb"]', false)
    currency = 'JPY'
    service_provider = 'credit'
    service_providers = APIHelper.json_deserialize(
      '["credit","paidy"]', false)
    gateway_transaction_id = 'gw-txn-00123456'
    bank_transfer_payment_statuses = APIHelper.json_deserialize(
      '["exact"]', false)
    bank_transfer_latest_deposit_date_from = '2026-04-01T00:00:00Z'
    bank_transfer_latest_deposit_date_to = '2026-04-30T23:59:59.999Z'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'

    # Perform the API call through the SDK function
    result = @controller.list_transaction_history(
      mode: mode, short_id: short_id, from: from, to: to, status: status,
      type: type, search: search, email: email, id: id, metadata: metadata,
      card_exp: card_exp, card_last_four: card_last_four,
      cardholder: cardholder, card_brand: card_brand, brand: brand,
      brands: brands, currency: currency, service_provider: service_provider,
      service_providers: service_providers,
      gateway_transaction_id: gateway_transaction_id,
      bank_transfer_payment_statuses: bank_transfer_payment_statuses,
      bank_transfer_latest_deposit_date_from: bank_transfer_latest_deposit_date_from,
      bank_transfer_latest_deposit_date_to: bank_transfer_latest_deposit_date_to,
      limit: limit, cursor: cursor, cursor_direction: cursor_direction
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
      '{"items":[{"store_id":"11edf541-c42d-653c-8c3d-dfe0a55f95c0","resource_'\
      'id":"11ef0000-0000-4000-8000-000000000070","charge_id":null,"amount":10'\
      '00,"currency":"JPY","amount_formatted":1000,"type":"charge","status":"s'\
      'uccessful","metadata":{},"created_on":"2024-05-01T12:34:56.789Z","mode"'\
      ':"test","merchant_name":"Test merchant","store_name":"Test store","paym'\
      'ent_type":"card","user_data":{"type":"charge","cardholder_name":"Some G'\
      'uy","cardholder_email_address":"test4@univapay.com","brand":"visa","gat'\
      'eway":"test","service_provider":"credit","refunds":[{"refund_id":"11ef0'\
      '000-0000-4000-8000-000000000010","amount":500,"currency":"JPY","amount_'\
      'formatted":500,"status":"successful"}]},"bank_transfer_payment_status":'\
      'null,"bank_transfer_latest_deposit_date":null,"mcp_token_id":null,"char'\
      'ge_type":"normal"},{"store_id":"11edf541-c42d-653c-8c3d-dfe0a55f95c0","'\
      'resource_id":"11ef0000-0000-4000-8000-000000000010","charge_id":"11ef00'\
      '00-0000-4000-8000-000000000070","amount":500,"currency":"JPY","amount_f'\
      'ormatted":500,"type":"refund","status":"successful","metadata":{},"crea'\
      'ted_on":"2024-05-01T13:00:00.000000Z","mode":"test","merchant_name":"Te'\
      'st merchant","store_name":"Test store","payment_type":"card","user_data'\
      '":{"type":"refund","reason":"customer_request"},"bank_transfer_payment_'\
      'status":null,"bank_transfer_latest_deposit_date":null,"mcp_token_id":nu'\
      'll,"charge_type":null}],"has_more":false,"total_hits":2}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Returns a paginated, searchable history of charges and refunds for a single store, combining both resource types into a single unified row shape.
  def test_list_store_transaction_history
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    mode = 'test'
    short_id = '8bfc29'
    from = '2026-04-01T00:00:00Z'
    to = '2026-04-30T23:59:59.999Z'
    status = 'successful'
    type = 'charge'
    search = 'Taro Yamada'
    email = 'user@example.com'
    id = '11ef0000-0000-4000-8000-000000000070'
    metadata = 'order_id: 12345'
    card_exp = '2026-04'
    card_last_four = '4242'
    cardholder = 'TARO YAMADA'
    card_brand = APIHelper.json_deserialize(
      '["visa"]', false)
    brand = APIHelper.json_deserialize(
      '["visa"]', false)
    brands = APIHelper.json_deserialize(
      '["visa","jcb"]', false)
    currency = 'JPY'
    service_provider = 'credit'
    service_providers = APIHelper.json_deserialize(
      '["credit","paidy"]', false)
    gateway_transaction_id = 'gw-txn-00123456'
    bank_transfer_payment_statuses = APIHelper.json_deserialize(
      '["exact"]', false)
    bank_transfer_latest_deposit_date_from = '2026-04-01T00:00:00Z'
    bank_transfer_latest_deposit_date_to = '2026-04-30T23:59:59.999Z'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'

    # Perform the API call through the SDK function
    result = @controller.list_store_transaction_history(
      store_id, mode: mode, short_id: short_id, from: from, to: to,
      status: status, type: type, search: search, email: email, id: id,
      metadata: metadata, card_exp: card_exp, card_last_four: card_last_four,
      cardholder: cardholder, card_brand: card_brand, brand: brand,
      brands: brands, currency: currency, service_provider: service_provider,
      service_providers: service_providers,
      gateway_transaction_id: gateway_transaction_id,
      bank_transfer_payment_statuses: bank_transfer_payment_statuses,
      bank_transfer_latest_deposit_date_from: bank_transfer_latest_deposit_date_from,
      bank_transfer_latest_deposit_date_to: bank_transfer_latest_deposit_date_to,
      limit: limit, cursor: cursor, cursor_direction: cursor_direction
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
      '{"items":[{"store_id":"11edf541-c42d-653c-8c3d-dfe0a55f95c0","resource_'\
      'id":"11ef0000-0000-4000-8000-000000000072","charge_id":null,"amount":25'\
      '00,"currency":"JPY","amount_formatted":2500,"type":"charge","status":"a'\
      'waiting","metadata":{},"created_on":"2024-05-03T10:00:00.000000Z","mode'\
      '":"live","merchant_name":"Test merchant","store_name":"Test store","pay'\
      'ment_type":"bank_transfer","user_data":{"type":"charge","cardholder_ema'\
      'il_address":"test_bank_transfer@test.com","brand":"aozora_bank","gatewa'\
      'y":"aozora_bank","service_provider":"bank_transfer","refunds":[]},"bank'\
      '_transfer_payment_status":"unpaid","bank_transfer_latest_deposit_date":'\
      'null,"mcp_token_id":null,"charge_type":"normal"}],"has_more":false,"tot'\
      'al_hits":1}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end