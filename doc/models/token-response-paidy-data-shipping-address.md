
# Token Response Paidy Data Shipping Address

Shipping address returned for a Paidy token.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponsePaidyDataShippingAddress`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `zip` | `String` | Optional | Japanese postal code. |
| `line_1` | `String` | Optional | Primary street address line. |
| `line_2` | `String` | Optional | Secondary street address line. |
| `city` | `String` | Optional | City or locality. |
| `state` | `String` | Optional | State or prefecture. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_paidy_data_shipping_address = TokenResponsePaidyDataShippingAddress.new(
  zip: '105-0011',
  line1: '1-1-1',
  city: 'Minato',
  state: 'Tokyo'
)
```

