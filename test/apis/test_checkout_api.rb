# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'api_test_base'

class CheckoutApiTest < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.checkout
    @response_catcher = @controller.http_call_back
  end

  # Returns the merchant's checkout configuration: enabled payment methods and their limits, installment/subscription plan settings, convenience-store and bank-transfer settings, widget theme, and per-brand feature support. Resolved entirely from the bearer credential — takes no parameters.
  def test_get_checkout_info

    # Perform the API call through the SDK function
    result = @controller.get_checkout_info()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"mode":"test","recurring_token_privilege":"none","name":"Test store","'\
      'card_configuration":{"enabled":true,"debit_enabled":true,"prepaid_enabl'\
      'ed":true,"debit_authorization_enabled":false,"prepaid_authorization_ena'\
      'bled":false,"only_direct_currency":false,"forbidden_card_brands":null,"'\
      'allowed_countries_by_ip":null,"foreign_cards_allowed":true,"fail_on_new'\
      '_email":null,"card_limit":null,"allow_empty_cvv":null,"allow_direct_tok'\
      'en_creation":true,"three_ds_required":false,"three_ds_address_required"'\
      ':false,"three_ds_skip_enabled":false,"three_ds_phone_number_required":t'\
      'rue},"subscription_configuration":{"enabled":true},"installments_config'\
      'uration":{"enabled":true,"card_processor":{"revolving":true,"fixed_cycl'\
      'e":true},"supported_payment_types":["card"],"min_charge_amount":{"amoun'\
      't":1000,"amount_formatted":1000,"currency":"JPY"},"max_payout_period":"'\
      'P2Y","only_with_processor":true},"subscription_plan_configuration":{"en'\
      'abled":true,"fixed_cycle":true,"fixed_cycle_amount":true,"supported_pay'\
      'ment_types":["card"],"min_charge_amount":null,"max_payout_period":null}'\
      ',"checkout_configuration":{"ec_email":{"enabled":false},"ec_products":{'\
      '"enabled":false}},"qr_scan_configuration":{"enabled":true,"forbidden_qr'\
      '_scan_gateways":null},"convenience_configuration":{"enabled":true,"expi'\
      'ration":"PT720H","expiration_time_shift":{"enabled":false}},"paidy_conf'\
      'iguration":{"enabled":true},"paidy_public_key":null,"logo_image":null,"'\
      'theme":{"colors":{"main_background":"#FFFFFF","secondary_background":"#'\
      'F5F8FC","main_color":"#4C5F85","main_text":"#FFFFFF","primary_text":"#4'\
      'C5F85","secondary_text":"#4C5F85","base_text":"#4C5F85","body_backgroun'\
      'd":"#FFFFFF"}},"recurring_card_charge_cvv_confirmation":{"enabled":fals'\
      'e,"threshold":null},"online_configuration":{"enabled":true},"bank_trans'\
      'fer_configuration":{"enabled":true,"match_amount":"disabled","expiratio'\
      'n":"PT72H","expiration_time_shift":{"enabled":false},"virtual_bank_acco'\
      'unts_threshold":5,"virtual_bank_accounts_fetch_count":10,"default_exten'\
      'sion_period":"PT168H","maximum_extension_period":"PT168H","automatic_ex'\
      'tension_enabled":false,"charge_request_notification_enabled":false,"cha'\
      'rge_request_canceled_notification_enabled":false,"charge_expired_notifi'\
      'cation_enabled":false,"deposit_received_notification_enabled":false,"de'\
      'posit_insufficient_notification_enabled":false,"deposit_exceeded_notifi'\
      'cation_enabled":false,"extension_notification_enabled":false,"remind_no'\
      'tification_period":"PT168H","remind_notification_enabled":false},"suppo'\
      'rted_brands":[{"payment_type":"card","brand":"visa","card_brand":"visa"'\
      ',"dynamic_info":false,"support_auth_capture":true,"requires_full_name":'\
      'false,"requires_cvv":true,"countries_allowed":null,"supported_currencie'\
      's":null,"cvv_auth":false,"installment_capable":true,"mcp_capable":false'\
      ',"mcp_only":false},{"payment_type":"qr_merchant","brand":"alipay_mercha'\
      'nt_qr","qr_brand":"alipay_merchant_qr","dynamic_info":false,"support_au'\
      'th_capture":false,"requires_full_name":false,"requires_cvv":false,"coun'\
      'tries_allowed":null,"supported_currencies":null,"cvv_auth":false,"insta'\
      'llment_capable":false,"mcp_capable":false,"mcp_only":false}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end