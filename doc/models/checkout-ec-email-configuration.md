
# Checkout Ec Email Configuration

Email-related EC checkout settings.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutEcEmailConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether EC email receipts are enabled. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_ec_email_configuration = CheckoutEcEmailConfiguration.new(
  enabled: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

