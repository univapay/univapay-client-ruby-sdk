# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
require 'json'

require 'apimatic_core_interfaces'
require 'apimatic_core'
require 'apimatic_faraday_client_adapter'

require_relative 'univapay_client_sdk/api_helper'
require_relative 'univapay_client_sdk/client'

# Utilities
require_relative 'univapay_client_sdk/utilities/file_wrapper'
require_relative 'univapay_client_sdk/utilities/date_time_helper'
require_relative 'univapay_client_sdk/utilities/union_type_lookup'

# Http
require_relative 'univapay_client_sdk/http/api_response'
require_relative 'univapay_client_sdk/http/http_call_back'
require_relative 'univapay_client_sdk/http/http_method_enum'
require_relative 'univapay_client_sdk/http/http_request'
require_relative 'univapay_client_sdk/http/http_response'
require_relative 'univapay_client_sdk/http/proxy_settings'


# Logger
require_relative 'univapay_client_sdk/logging/configuration/' \
                 'api_logging_configuration'
require_relative 'univapay_client_sdk/logging/sdk_logger'
require_relative 'univapay_client_sdk/http/auth/oauth_2'

# Events
require_relative 'univapay_client_sdk/events/webhooks/charge_handler'
require_relative 'univapay_client_sdk/events/webhooks/token_handler'
require_relative 'univapay_client_sdk/events/webhooks/refund_handler'
require_relative 'univapay_client_sdk/events/webhooks/cancel_handler'
require_relative 'univapay_client_sdk/events/webhooks/subscription_handler'
require_relative 'univapay_client_sdk/events/webhooks/bank_transfer_handler'
require_relative 'univapay_client_sdk/events/webhooks/customs_handler'
require_relative 'univapay_client_sdk/events/unknown_event'

# Models
require_relative 'univapay_client_sdk/models/base_model'
require_relative 'univapay_client_sdk/models/api_error_detail'
require_relative 'univapay_client_sdk/models/issuer_token_payload'
require_relative 'univapay_client_sdk/models/payment_error'
require_relative 'univapay_client_sdk/models/generic_metadata'
require_relative 'univapay_client_sdk/models/charge_create_request'
require_relative 'univapay_client_sdk/models/charge'
require_relative 'univapay_client_sdk/models/charge_update_request'
require_relative 'univapay_client_sdk/models/charge_capture_request'
require_relative 'univapay_client_sdk/models/charge_list'
require_relative 'univapay_client_sdk/models/base_konbini_data'
require_relative 'univapay_client_sdk/models/base_online_data'
require_relative 'univapay_client_sdk/models/token_create_phone_number'
require_relative 'univapay_client_sdk/models/token_response_phone_number'
require_relative 'univapay_client_sdk/models/token_create_card_data'
require_relative 'univapay_client_sdk/models/token_create_konbini_data'
require_relative 'univapay_client_sdk/models/token_create_online_data'
require_relative 'univapay_client_sdk/models/base_bank_transfer_data'
require_relative 'univapay_client_sdk/models/token_create_bank_transfer_data'
require_relative 'univapay_client_sdk/models/token_response_card_data'
require_relative 'univapay_client_sdk/models/token_response_konbini_data'
require_relative 'univapay_client_sdk/models/token_response_online_data'
require_relative 'univapay_client_sdk/models/token_response_bank_transfer_data'
require_relative 'univapay_client_sdk/models/token_create_qr_scan_data'
require_relative 'univapay_client_sdk/models/token_response_qr_scan_data'
require_relative 'univapay_client_sdk/models/token_create_qr_merchant_data'
require_relative 'univapay_client_sdk/models/token_response_qr_merchant_data'
require_relative 'univapay_client_sdk/models/' \
                 'token_create_paidy_data_shipping_address'
require_relative 'univapay_client_sdk/models/token_create_paidy_data'
require_relative 'univapay_client_sdk/models/' \
                 'token_response_paidy_data_shipping_address'
require_relative 'univapay_client_sdk/models/token_response_paidy_data'
require_relative 'univapay_client_sdk/models/transaction_token_create_request'
require_relative 'univapay_client_sdk/models/' \
                 'transaction_token_create_request_metadata'
require_relative 'univapay_client_sdk/models/transaction_token_base'
require_relative 'univapay_client_sdk/models/card_transaction_token'
require_relative 'univapay_client_sdk/models/konbini_transaction_token'
require_relative 'univapay_client_sdk/models/online_transaction_token'
require_relative 'univapay_client_sdk/models/bank_transfer_transaction_token'
require_relative 'univapay_client_sdk/models/paidy_transaction_token'
require_relative 'univapay_client_sdk/models/qr_scan_transaction_token'
require_relative 'univapay_client_sdk/models/qr_merchant_transaction_token'
require_relative 'univapay_client_sdk/models/transaction_token_update_request'
require_relative 'univapay_client_sdk/models/transaction_token_list_item'
require_relative 'univapay_client_sdk/models/transaction_token_list'
require_relative 'univapay_client_sdk/models/issuer_token'
require_relative 'univapay_client_sdk/models/three_ds_issuer_token'
require_relative 'univapay_client_sdk/models/bank_transfer_ledger'
require_relative 'univapay_client_sdk/models/bank_transfer_ledger_list'
require_relative 'univapay_client_sdk/models/' \
                 'charge_create_request_client_metadata'
require_relative 'univapay_client_sdk/models/charge_create_request_redirect'
require_relative 'univapay_client_sdk/models/charge_create_request_three_ds'
require_relative 'univapay_client_sdk/models/charge_redirect'
require_relative 'univapay_client_sdk/models/charge_three_ds'
require_relative 'univapay_client_sdk/models/' \
                 'token_create_card_data_cvv_authorize'
require_relative 'univapay_client_sdk/models/token_create_card_data_three_ds'
require_relative 'univapay_client_sdk/models/enable_token_three_ds_request'
require_relative 'univapay_client_sdk/models/token_response_card_data_card'
require_relative 'univapay_client_sdk/models/token_response_card_data_billing'
require_relative 'univapay_client_sdk/models/' \
                 'token_response_card_data_cvv_authorize'
require_relative 'univapay_client_sdk/models/' \
                 'token_response_card_data_cvv_authorize_check'
require_relative 'univapay_client_sdk/models/token_response_card_data_three_ds'
require_relative 'univapay_client_sdk/models/' \
                 'transaction_token_update_request_data'
require_relative 'univapay_client_sdk/models/' \
                 'transaction_token_update_request_data_phone_number'
require_relative 'univapay_client_sdk/models/' \
                 'transaction_token_list_item_user_data'
require_relative 'univapay_client_sdk/models/subscription'
require_relative 'univapay_client_sdk/models/subscription_create_request'
require_relative 'univapay_client_sdk/models/subscription_schedule_settings'
require_relative 'univapay_client_sdk/models/subscription_update_request'
require_relative 'univapay_client_sdk/models/' \
                 'subscription_update_schedule_settings'
require_relative 'univapay_client_sdk/models/subscription_update_next_payment'
require_relative 'univapay_client_sdk/models/subscription_next_payment'
require_relative 'univapay_client_sdk/models/subscription_installment_plan'
require_relative 'univapay_client_sdk/models/subscription_plan_settings'
require_relative 'univapay_client_sdk/models/subscription_list_item'
require_relative 'univapay_client_sdk/models/subscription_user_data'
require_relative 'univapay_client_sdk/models/subscription_list'
require_relative 'univapay_client_sdk/models/' \
                 'subscription_simulation_plan_settings'
require_relative 'univapay_client_sdk/models/subscription_simulation_request'
require_relative 'univapay_client_sdk/models/subscription_simulation_payment'
require_relative 'univapay_client_sdk/models/subscription_patch_payment_request'
require_relative 'univapay_client_sdk/models/subscription_suspend_request'
require_relative 'univapay_client_sdk/models/subscription_patch_token_request'
require_relative 'univapay_client_sdk/models/subscription_payment'
require_relative 'univapay_client_sdk/models/subscription_payment_list'
require_relative 'univapay_client_sdk/models/refund'
require_relative 'univapay_client_sdk/models/refund_list'
require_relative 'univapay_client_sdk/models/refund_create_request'
require_relative 'univapay_client_sdk/models/refund_update_request'
require_relative 'univapay_client_sdk/models/cancel'
require_relative 'univapay_client_sdk/models/cancel_list'
require_relative 'univapay_client_sdk/models/cancel_create_request'
require_relative 'univapay_client_sdk/models/cancel_update_request'
require_relative 'univapay_client_sdk/models/customs_declaration_create_request'
require_relative 'univapay_client_sdk/models/customs_declaration_patch_request'
require_relative 'univapay_client_sdk/models/webhook'
require_relative 'univapay_client_sdk/models/webhook_list'
require_relative 'univapay_client_sdk/models/webhook_create_request'
require_relative 'univapay_client_sdk/models/webhook_update_request'
require_relative 'univapay_client_sdk/models/webhook_event'
require_relative 'univapay_client_sdk/models/webhook_event_list'
require_relative 'univapay_client_sdk/models/bank_transfer_status_data'
require_relative 'univapay_client_sdk/models/merchant_webhook_money_amount'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_transfer_schedule_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_user_transactions_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_recurring_cvv_confirmation_config'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_recurring_token_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_limit_charge_by_card_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_limit_refund_by_sales_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_security_configuration'
require_relative 'univapay_client_sdk/models/merchant_webhook_checkout_toggle'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_checkout_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_installment_plan_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_subscription_plan_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_card_brand_percent_fees'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_card_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_qr_scan_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_convenience_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_paidy_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_qr_merchant_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_online_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_bank_transfer_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_subscription_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'merchant_webhook_customer_management_configuration'
require_relative 'univapay_client_sdk/models/merchant_webhook_configuration'
require_relative 'univapay_client_sdk/models/merchant'
require_relative 'univapay_client_sdk/models/store_list_item'
require_relative 'univapay_client_sdk/models/store_list'
require_relative 'univapay_client_sdk/models/store'
require_relative 'univapay_client_sdk/models/create_customer_id_request'
require_relative 'univapay_client_sdk/models/create_customer_id_response'
require_relative 'univapay_client_sdk/models/' \
                 'customs_declaration_webhook_declaration'
require_relative 'univapay_client_sdk/models/customs_declaration_webhook_result'
require_relative 'univapay_client_sdk/models/' \
                 'customs_declaration_webhook_other_error'
require_relative 'univapay_client_sdk/models/customs_declaration_webhook_error'
require_relative 'univapay_client_sdk/models/customs_declaration_webhook_data'
require_relative 'univapay_client_sdk/models/webhook_callback_envelope'
require_relative 'univapay_client_sdk/models/refund_webhook_callback_extension'
require_relative 'univapay_client_sdk/models/refund_webhook_callback'
require_relative 'univapay_client_sdk/models/cancel_webhook_callback_extension'
require_relative 'univapay_client_sdk/models/cancel_webhook_callback'
require_relative 'univapay_client_sdk/models/charge_webhook_event'
require_relative 'univapay_client_sdk/models/token_webhook_event'
require_relative 'univapay_client_sdk/models/subscription_webhook_event'
require_relative 'univapay_client_sdk/models/' \
                 'bank_transfer_status_webhook_callback_extension'
require_relative 'univapay_client_sdk/models/' \
                 'bank_transfer_status_webhook_callback'
require_relative 'univapay_client_sdk/models/' \
                 'customs_declaration_webhook_callback_extension'
require_relative 'univapay_client_sdk/models/' \
                 'customs_declaration_webhook_callback'
require_relative 'univapay_client_sdk/models/' \
                 'direct_debit_merchant_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'direct_debit_notification_configuration'
require_relative 'univapay_client_sdk/models/direct_debit_schedule'
require_relative 'univapay_client_sdk/models/direct_debit_bank_account'
require_relative 'univapay_client_sdk/models/' \
                 'direct_debit_bank_account_create_request'
require_relative 'univapay_client_sdk/models/' \
                 'direct_debit_bank_account_update_request'
require_relative 'univapay_client_sdk/models/direct_debit_bank_account_list'
require_relative 'univapay_client_sdk/models/direct_debit_bank_transfer'
require_relative 'univapay_client_sdk/models/' \
                 'direct_debit_bank_transfer_create_request'
require_relative 'univapay_client_sdk/models/' \
                 'direct_debit_bank_transfer_patch_request'
require_relative 'univapay_client_sdk/models/direct_debit_bank_transfer_list'
require_relative 'univapay_client_sdk/models/checkout_money_amount'
require_relative 'univapay_client_sdk/models/card_limit'
require_relative 'univapay_client_sdk/models/checkout_card_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'checkout_installments_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'checkout_subscription_plan_configuration'
require_relative 'univapay_client_sdk/models/checkout_ec_configuration'
require_relative 'univapay_client_sdk/models/checkout_qr_scan_configuration'
require_relative 'univapay_client_sdk/models/expiration_time_shift'
require_relative 'univapay_client_sdk/models/checkout_convenience_configuration'
require_relative 'univapay_client_sdk/models/checkout_theme_colors'
require_relative 'univapay_client_sdk/models/checkout_theme'
require_relative 'univapay_client_sdk/models/recurring_cvv_confirmation'
require_relative 'univapay_client_sdk/models/' \
                 'checkout_bank_transfer_configuration'
require_relative 'univapay_client_sdk/models/checkout_supported_brand'
require_relative 'univapay_client_sdk/models/checkout_info'
require_relative 'univapay_client_sdk/models/transaction_history_refund'
require_relative 'univapay_client_sdk/models/transaction_history_user_data'
require_relative 'univapay_client_sdk/models/transaction_history_item'
require_relative 'univapay_client_sdk/models/transaction_history_list'
require_relative 'univapay_client_sdk/models/card_processor_installment_config'
require_relative 'univapay_client_sdk/models/checkout_ec_email_configuration'
require_relative 'univapay_client_sdk/models/checkout_ec_products_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'checkout_installment_card_processor'
require_relative 'univapay_client_sdk/models/checkout_online_configuration'
require_relative 'univapay_client_sdk/models/checkout_paidy_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'checkout_subscription_configuration'
require_relative 'univapay_client_sdk/models/' \
                 'restrict_ip_after_failed_charge_config'
require_relative 'univapay_client_sdk/models/suspend_schedule_settings'
require_relative 'univapay_client_sdk/models/cursor_direction_query'
require_relative 'univapay_client_sdk/models/mode_query'
require_relative 'univapay_client_sdk/models/api_error_status'
require_relative 'univapay_client_sdk/models/' \
                 'charge_create_request_three_ds_mode'
require_relative 'univapay_client_sdk/models/charge_transaction_token_type'
require_relative 'univapay_client_sdk/models/charge_status'
require_relative 'univapay_client_sdk/models/charge_mode'
require_relative 'univapay_client_sdk/models/' \
                 'base_konbini_data_convenience_store'
require_relative 'univapay_client_sdk/models/base_online_data_brand'
require_relative 'univapay_client_sdk/models/base_online_data_call_method'
require_relative 'univapay_client_sdk/models/base_online_data_os_type'
require_relative 'univapay_client_sdk/models/' \
                 'base_online_data_user_identifier_source'
require_relative 'univapay_client_sdk/models/' \
                 'token_response_card_data_three_ds_status'
require_relative 'univapay_client_sdk/models/' \
                 'transaction_token_create_request_payment_type'
require_relative 'univapay_client_sdk/models/' \
                 'transaction_token_create_request_type'
require_relative 'univapay_client_sdk/models/transaction_token_payment_type'
require_relative 'univapay_client_sdk/models/transaction_token_mode'
require_relative 'univapay_client_sdk/models/transaction_token_type'
require_relative 'univapay_client_sdk/models/transaction_token_list_type'
require_relative 'univapay_client_sdk/models/transaction_token_active_filter'
require_relative 'univapay_client_sdk/models/issuer_token_payment_type'
require_relative 'univapay_client_sdk/models/issuer_token_call_method'
require_relative 'univapay_client_sdk/models/three_ds_issuer_token_payment_type'
require_relative 'univapay_client_sdk/models/three_ds_issuer_token_call_method'
require_relative 'univapay_client_sdk/models/' \
                 'bank_transfer_ledger_bank_ledger_type'
require_relative 'univapay_client_sdk/models/bank_transfer_ledger_mode'
require_relative 'univapay_client_sdk/models/subscription_update_status'
require_relative 'univapay_client_sdk/models/subscription_terminate_with_status'
require_relative 'univapay_client_sdk/models/subscription_period'
require_relative 'univapay_client_sdk/models/subscription_termination_mode'
require_relative 'univapay_client_sdk/models/subscription_status'
require_relative 'univapay_client_sdk/models/subscription_simulation_period'
require_relative 'univapay_client_sdk/models/refund_status'
require_relative 'univapay_client_sdk/models/refund_reason_request'
require_relative 'univapay_client_sdk/models/refund_reason_response'
require_relative 'univapay_client_sdk/models/cancel_status'
require_relative 'univapay_client_sdk/models/webhook_trigger'
require_relative 'univapay_client_sdk/models/bank_transfer_payment_status'
require_relative 'univapay_client_sdk/models/customs_declaration_webhook_status'
require_relative 'univapay_client_sdk/models/direct_debit_bank_account_type'
require_relative 'univapay_client_sdk/models/direct_debit_registration_origin'
require_relative 'univapay_client_sdk/models/direct_debit_bank_account_status'
require_relative 'univapay_client_sdk/models/direct_debit_bank_transfer_lock'
require_relative 'univapay_client_sdk/models/direct_debit_bank_transfer_status'
require_relative 'univapay_client_sdk/models/direct_debit_bank_transfer_error'
require_relative 'univapay_client_sdk/models/direct_debit_debit_date'
require_relative 'univapay_client_sdk/models/checkout_mode'
require_relative 'univapay_client_sdk/models/checkout_recurring_token_privilege'
require_relative 'univapay_client_sdk/models/checkout_payment_type'
require_relative 'univapay_client_sdk/models/' \
                 'checkout_bank_transfer_match_amount'
require_relative 'univapay_client_sdk/models/transaction_history_type'
require_relative 'univapay_client_sdk/models/transaction_history_status'
require_relative 'univapay_client_sdk/models/transaction_history_mode'
require_relative 'univapay_client_sdk/models/transaction_history_payment_type'
require_relative 'univapay_client_sdk/models/transaction_history_charge_type'
require_relative 'univapay_client_sdk/models/' \
                 'transaction_history_service_provider'
require_relative 'univapay_client_sdk/models/transaction_history_refund_reason'
require_relative 'univapay_client_sdk/models/transaction_history_refund_status'
require_relative 'univapay_client_sdk/models/bank_transfer_event'
require_relative 'univapay_client_sdk/models/cancel_event'
require_relative 'univapay_client_sdk/models/charge_event'
require_relative 'univapay_client_sdk/models/customs_declaration_event'
require_relative 'univapay_client_sdk/models/installment_fixed_cycles'
require_relative 'univapay_client_sdk/models/installment_plan_type'
require_relative 'univapay_client_sdk/models/plan_settings_type'
require_relative 'univapay_client_sdk/models/refund_event'
require_relative 'univapay_client_sdk/models/simulation_plan_settings_type'
require_relative 'univapay_client_sdk/models/subscription_event'
require_relative 'univapay_client_sdk/models/terminate_with_status'
require_relative 'univapay_client_sdk/models/token_event'

# Exceptions
require_relative 'univapay_client_sdk/exceptions/api_exception'
require_relative 'univapay_client_sdk/exceptions/api_error_exception'

require_relative 'univapay_client_sdk/configuration'

# Controllers
require_relative 'univapay_client_sdk/apis/base_api'
require_relative 'univapay_client_sdk/apis/charges_api'
require_relative 'univapay_client_sdk/apis/transaction_tokens_api'
require_relative 'univapay_client_sdk/apis/refunds_api'
require_relative 'univapay_client_sdk/apis/subscriptions_api'
require_relative 'univapay_client_sdk/apis/cancels_api'
require_relative 'univapay_client_sdk/apis/merchants_api'
require_relative 'univapay_client_sdk/apis/stores_api'
require_relative 'univapay_client_sdk/apis/webhooks_api'
require_relative 'univapay_client_sdk/apis/direct_debit_api'
require_relative 'univapay_client_sdk/apis/checkout_api'
require_relative 'univapay_client_sdk/apis/transaction_history_api'
