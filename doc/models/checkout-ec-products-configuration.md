
# Checkout Ec Products Configuration

Product-related EC checkout settings.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutEcProductsConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether EC product line items are enabled. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_ec_products_configuration = CheckoutEcProductsConfiguration.new(
  enabled: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

