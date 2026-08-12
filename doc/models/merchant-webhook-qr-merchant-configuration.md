
# Merchant Webhook Qr Merchant Configuration

QR merchant payment settings.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookQrMerchantConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables QR merchant payment flows. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_qr_merchant_configuration = MerchantWebhookQrMerchantConfiguration.new(
  enabled: false
)
```

