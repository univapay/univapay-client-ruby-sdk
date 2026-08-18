
# Token Create Paidy Data

Token Create Paidy Data schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenCreatePaidyData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `paidy_token` | `String` | Required | One-time token issued by the Paidy SDK/widget on the client side. |
| `shipping_address` | [`TokenCreatePaidyDataShippingAddress`](../../doc/models/token-create-paidy-data-shipping-address.md) | Required | Shipping address for a Paidy token. `zip` is required; the server additionally requires at least one of `line1`, `line2`, `city`, or `state` to be present (not enforceable at the schema level). |
| `phone_number` | `String` | Optional | Consumer phone number in Japanese format (e.g., '08012341234'). |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_create_paidy_data = TokenCreatePaidyData.new(
  paidy_token: 'paidy-token-abc123',
  shipping_address: TokenCreatePaidyDataShippingAddress.new(
    zip: '105-0011',
    line1: '1-1-1',
    city: 'Minato',
    state: 'Tokyo'
  ),
  phone_number: '08012341234'
)
```

