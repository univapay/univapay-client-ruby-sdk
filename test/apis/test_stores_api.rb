# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'api_test_base'

class StoresApiTest < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.stores
    @response_catcher = @controller.http_call_back
  end

  # Returns stores visible to the current merchant credential. Supports cursor pagination plus `short_id` and free-text `search` filters.
  def test_list_stores
    # Parameters for the API call
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'
    short_id = 'st_01hxy9p8zw4d'
    search = 'tokyo'

    # Perform the API call through the SDK function
    result = @controller.list_stores(limit: limit, cursor: cursor,
                                     cursor_direction: cursor_direction,
                                     short_id: short_id, search: search)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"items":[{"id":"11ef0000-0000-4000-8000-000000000022","name":"Tokyo St'\
      'ore","merchant_name":"Example Merchant","created_on":"2026-04-09T07:35:'\
      '50.000000Z"},{"id":"11ef0000-0000-4000-8000-000000000023","name":"Osaka'\
      ' Store","merchant_name":"Example Merchant","created_on":"2026-04-10T09:'\
      '12:30.000000Z"},{"id":"11ef0000-0000-4000-8000-000000000024","name":"On'\
      'line Store","merchant_name":"Example Merchant","created_on":"2026-04-12'\
      'T14:45:05.000000Z"}],"has_more":false,"total_hits":3}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Returns a single store plus its resolved configuration snapshot for the current merchant context.
  def test_get_store
    # Parameters for the API call
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

    # Perform the API call through the SDK function
    result = @controller.get_store(id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11ef0000-0000-4000-8000-000000000022","name":"Tokyo Store","crea'\
      'ted_on":"2026-04-09T07:35:50.000000Z","configuration":{"percent_fee":3.'\
      '6,"country":"JP","language":"ja","minimum_charge_amounts":[{"amount":10'\
      '0,"currency":"JPY"}],"maximum_charge_amounts":[{"amount":100000,"curren'\
      'cy":"JPY"}],"user_transactions_configuration":{"enabled":true,"notify_c'\
      'ustomer":true,"notify_on_webhook_failure":true},"card_configuration":{"'\
      'enabled":true,"debit_enabled":true,"prepaid_enabled":false,"three_ds_re'\
      'quired":true},"online_configuration":{"enabled":true},"bank_transfer_co'\
      'nfiguration":{"enabled":true,"match_amount":true,"expiration":"P7D"},"q'\
      'r_scan_configuration":{"enabled":true,"forbidden_qr_scan_gateways":["we'\
      'chat"]},"convenience_configuration":{"enabled":true,"expiration":"P3D"}'\
      ',"paidy_configuration":{"enabled":false},"recurring_token_configuration'\
      '":{"recurring_type":"infinite","charge_wait_period":"P7D","card_charge_'\
      'cvv_confirmation":{"enabled":false}},"security_configuration":{"card_ch'\
      'arge_cooldown":"PT5M","subscription_cooldown":"PT10M","restrict_ip_afte'\
      'r_failed_charge":{"enabled":true,"count":5,"cooldown":"PT1H"},"refund_p'\
      'ercent_limit":100,"confirmation_required":false,"min_refund_threshold":'\
      '100,"limit_refund_by_sales":{"enabled":true,"period":"monthly","rolling'\
      '_window":true}},"installments_configuration":{"enabled":true,"card_proc'\
      'essor":{"revolving":true,"fixed_cycle":true},"supported_payment_types":'\
      '["card"],"min_charge_amount":{"amount":3000,"currency":"JPY"},"max_payo'\
      'ut_period":"P12M","only_with_processor":true},"card_brand_percent_fees"'\
      ':{"visa":3.6,"mastercard":3.6,"jcb":3.8}}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Derives a deterministic, store-scoped UUID from a local customer identifier supplied by the merchant. Calling this endpoint again with the same `customer_id` for the same store always returns the same UUID — the operation has no side effects (nothing is persisted), so it is safe to call repeatedly and does not require an `Idempotency-Key`. App Token Secret is required.
  def test_create_customer_id
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    body = CreateCustomerIdRequest.from_hash(APIHelper.json_deserialize(
      '{"customer_id":"local-customer-1902"}', false))

    # Perform the API call through the SDK function
    result = @controller.create_customer_id(store_id, body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"customer_id":"8a3f1b8e-2c1a-4b7a-9c2e-6f6b6f6e2b10"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end