
# Checkout Convenience Configuration

Convenience-store (konbini) payment settings applied to checkout.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutConvenienceConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether convenience-store payments are enabled. |
| `expiration` | `String` | Optional | ISO-8601 duration before a convenience-store payment expires. |
| `expiration_time_shift` | [`ExpirationTimeShift`](../../doc/models/expiration-time-shift.md) | Optional | Time-of-day override applied when calculating expirations, shared by convenience-store and bank-transfer configuration. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_convenience_configuration = CheckoutConvenienceConfiguration.new(
  enabled: true,
  expiration: 'PT720H',
  expiration_time_shift: ExpirationTimeShift.new(
    value: 'value4',
    enabled: false,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

