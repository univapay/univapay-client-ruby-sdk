
# Checkout Paidy Configuration

Paidy payment feature toggle.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutPaidyConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether Paidy payments are enabled. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_paidy_configuration = CheckoutPaidyConfiguration.new(
  enabled: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

