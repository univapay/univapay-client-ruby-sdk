
# Token Create Paidy Data Shipping Address

Shipping address for a Paidy token. `zip` is required; the server additionally requires at least one of `line1`, `line2`, `city`, or `state` to be present (not enforceable at the schema level).

*This model accepts additional fields of type Object.*

## Structure

`TokenCreatePaidyDataShippingAddress`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `zip` | `String` | Required | Japanese postal code (e.g., '105-0011'). |
| `line_1` | `String` | Optional | Primary street address line. |
| `line_2` | `String` | Optional | Secondary street address line. |
| `city` | `String` | Optional | City or locality. |
| `state` | `String` | Optional | State or prefecture. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_create_paidy_data_shipping_address = TokenCreatePaidyDataShippingAddress.new(
  zip: '105-0011',
  line1: '1-1-1',
  city: 'Minato',
  state: 'Tokyo'
)
```

