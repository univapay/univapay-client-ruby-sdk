
# Merchant Webhook Card Brand Percent Fees

Per-card-brand percent fee overrides.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookCardBrandPercentFees`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `visa` | `Float` | Optional | Percent fee override applied to Visa transactions. |
| `american_express` | `Float` | Optional | Percent fee override applied to American Express transactions. |
| `mastercard` | `Float` | Optional | Percent fee override applied to Mastercard transactions. |
| `maestro` | `Float` | Optional | Percent fee override applied to Maestro transactions. |
| `discover` | `Float` | Optional | Percent fee override applied to Discover transactions. |
| `jcb` | `Float` | Optional | Percent fee override applied to JCB transactions. |
| `diners_club` | `Float` | Optional | Percent fee override applied to Diners Club transactions. |
| `union_pay` | `Float` | Optional | Percent fee override applied to UnionPay transactions. |
| `private_label` | `Float` | Optional | Percent fee override applied to private-label card transactions. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_card_brand_percent_fees = MerchantWebhookCardBrandPercentFees.new(
  visa: 3.6,
  mastercard: 3.6,
  jcb: 3.8
)
```

