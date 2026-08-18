
# Checkout Online Configuration

Online redirect/wallet payment feature toggle.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutOnlineConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether online redirect/wallet payments are enabled. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_online_configuration = CheckoutOnlineConfiguration.new(
  enabled: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

