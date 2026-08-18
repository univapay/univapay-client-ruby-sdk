
# Checkout Card Configuration

Card payment settings applied to checkout.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutCardConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether card payments are enabled. |
| `debit_enabled` | `TrueClass \| FalseClass` | Optional | Whether debit cards are allowed. |
| `prepaid_enabled` | `TrueClass \| FalseClass` | Optional | Whether prepaid cards are allowed. |
| `debit_authorization_enabled` | `TrueClass \| FalseClass` | Optional | Whether authorization-only flows are allowed for debit cards. |
| `prepaid_authorization_enabled` | `TrueClass \| FalseClass` | Optional | Whether authorization-only flows are allowed for prepaid cards. |
| `only_direct_currency` | `TrueClass \| FalseClass` | Optional | Whether card processing is restricted to direct-settlement currencies. |
| `forbidden_card_brands` | `Array[String]` | Optional | Card brands rejected by merchant policy. Common values include `visa`, `mastercard`, `american_express`, `maestro`, `discover`, `jcb`, `diners_club`, `private_label`, and `unionpay`; gateway-specific brands the platform cannot map appear as `unmapped_<raw value>`. `null` when no brand is forbidden. |
| `allowed_countries_by_ip` | `Array[String]` | Optional | ISO 3166-1 alpha-2 country codes allowed to originate card payments by IP geolocation. `null` when unrestricted. |
| `foreign_cards_allowed` | `TrueClass \| FalseClass` | Optional | Whether cards issued outside the primary operating country are allowed. |
| `fail_on_new_email` | `TrueClass \| FalseClass` | Optional | Whether to reject card charges from previously unseen customer email addresses. `null` when not configured. |
| `card_limit` | [`CardLimit`](../../doc/models/card-limit.md) | Optional | Per-card spending limit. `null` when no limit is configured. |
| `allow_empty_cvv` | `TrueClass \| FalseClass` | Optional | Whether card flows may proceed without a CVV. `null` when not configured. |
| `allow_direct_token_creation` | `TrueClass \| FalseClass` | Optional | Whether direct card token creation is allowed without a hosted capture flow. |
| `three_ds_required` | `TrueClass \| FalseClass` | Optional | Whether 3-D Secure is required for eligible card flows. |
| `three_ds_address_required` | `TrueClass \| FalseClass` | Optional | Whether billing address data is required when running 3-D Secure. |
| `three_ds_skip_enabled` | `TrueClass \| FalseClass` | Optional | Whether privileged callers may request a 3-D Secure skip. |
| `three_ds_phone_number_required` | `TrueClass \| FalseClass` | Optional | Whether a phone number is required when running 3-D Secure. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_card_configuration = CheckoutCardConfiguration.new(
  enabled: true,
  debit_enabled: true,
  prepaid_enabled: true,
  debit_authorization_enabled: false,
  prepaid_authorization_enabled: false,
  only_direct_currency: false,
  foreign_cards_allowed: true,
  allow_direct_token_creation: true,
  three_ds_required: false,
  three_ds_address_required: false,
  three_ds_skip_enabled: false,
  three_ds_phone_number_required: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

