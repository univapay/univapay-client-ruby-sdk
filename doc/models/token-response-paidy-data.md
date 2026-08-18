
# Token Response Paidy Data

Token Response Paidy Data schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponsePaidyData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `paidy_token` | `String` | Required | One-time token issued by the Paidy SDK/widget on the client side. |
| `phone_number` | `String` | Optional | Consumer phone number in Japanese format. |
| `shipping_address` | [`TokenResponsePaidyDataShippingAddress`](../../doc/models/token-response-paidy-data-shipping-address.md) | Optional | Shipping address returned for a Paidy token. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_paidy_data = TokenResponsePaidyData.new(
  paidy_token: 'paidy-token-abc123',
  phone_number: '08012341234',
  shipping_address: TokenResponsePaidyDataShippingAddress.new(
    zip: '105-0011',
    line1: '1-1-1',
    city: 'Minato',
    state: 'Tokyo'
  )
)
```

