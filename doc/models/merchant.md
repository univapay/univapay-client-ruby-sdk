
# Merchant

Merchant resource returned by the backend `FullMerchantWithGroupRoles` formatter for merchant-authenticated callers.

*This model accepts additional fields of type Object.*

## Structure

`Merchant`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Merchant identifier. |
| `verification_data_id` | `UUID \| String` | Optional | Verification data identifier associated with the merchant. |
| `name` | `String` | Optional | Merchant display name. |
| `email` | `String` | Optional | Primary merchant email address. |
| `notification_email` | `String` | Optional | Merchant notification email address. |
| `finance_notification_email` | `String` | Optional | Merchant finance notification email address. |
| `verified` | `TrueClass \| FalseClass` | Optional | Whether the merchant has completed verification. |
| `configuration` | [`MerchantWebhookConfiguration`](../../doc/models/merchant-webhook-configuration.md) | Optional | Merchant configuration snapshot as serialized by the backend. |
| `created_on` | `DateTime` | Optional | Timestamp when the merchant was created. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant = Merchant.new(
  id: '11ef0000-0000-4000-8000-000000000020',
  verification_data_id: '11ef0000-0000-4000-8000-000000000021',
  name: 'Example Merchant',
  email: 'owner@example.com',
  notification_email: 'alerts@example.com',
  finance_notification_email: 'finance@example.com',
  verified: true,
  configuration: MerchantWebhookConfiguration.new(
    percent_fee: 3.6,
    country: 'JP',
    language: 'ja',
    minimum_charge_amounts: [
      MerchantWebhookMoneyAmount.new(
        amount: 100,
        currency: 'JPY'
      )
    ],
    maximum_charge_amounts: [
      MerchantWebhookMoneyAmount.new(
        amount: 100000,
        currency: 'JPY'
      )
    ],
    user_transactions_configuration: MerchantWebhookUserTransactionsConfiguration.new(
      enabled: true,
      notify_customer: true,
      notify_on_webhook_failure: true
    ),
    recurring_token_configuration: MerchantWebhookRecurringTokenConfiguration.new(
      recurring_type: 'infinite',
      charge_wait_period: 'P7D',
      card_charge_cvv_confirmation: MerchantWebhookRecurringCvvConfirmationConfig.new(
        enabled: false
      )
    ),
    security_configuration: MerchantWebhookSecurityConfiguration.new(
      card_charge_cooldown: 'PT5M',
      subscription_cooldown: 'PT10M',
      restrict_ip_after_failed_charge: RestrictIpAfterFailedChargeConfig.new(
        enabled: true,
        count: 5,
        cooldown: 'PT1H'
      ),
      refund_percent_limit: 100,
      confirmation_required: false,
      min_refund_threshold: 100,
      limit_refund_by_sales: MerchantWebhookLimitRefundBySalesConfiguration.new(
        enabled: true,
        period: 'monthly',
        rolling_window: true
      )
    ),
    installments_configuration: MerchantWebhookInstallmentPlanConfiguration.new(
      enabled: true,
      card_processor: CardProcessorInstallmentConfig.new(
        revolving: true,
        fixed_cycle: true
      ),
      supported_payment_types: [
        'card'
      ],
      min_charge_amount: MerchantWebhookMoneyAmount.new(
        amount: 3000,
        currency: 'JPY'
      ),
      max_payout_period: 'P12M',
      only_with_processor: true
    ),
    card_brand_percent_fees: MerchantWebhookCardBrandPercentFees.new(
      visa: 3.6,
      mastercard: 3.6,
      jcb: 3.8
    ),
    card_configuration: MerchantWebhookCardConfiguration.new(
      enabled: true,
      debit_enabled: true,
      prepaid_enabled: false,
      three_ds_required: true
    ),
    qr_scan_configuration: MerchantWebhookQrScanConfiguration.new(
      enabled: true,
      forbidden_qr_scan_gateways: [
        'wechat'
      ]
    ),
    convenience_configuration: MerchantWebhookConvenienceConfiguration.new(
      enabled: true,
      expiration: 'P3D'
    ),
    paidy_configuration: MerchantWebhookPaidyConfiguration.new(
      enabled: false
    ),
    online_configuration: MerchantWebhookOnlineConfiguration.new(
      enabled: true
    ),
    bank_transfer_configuration: MerchantWebhookBankTransferConfiguration.new(
      enabled: true,
      match_amount: true,
      expiration: 'P7D'
    )
  ),
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z')
)
```

