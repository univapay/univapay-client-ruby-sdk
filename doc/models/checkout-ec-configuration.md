
# Checkout Ec Configuration

EC checkout feature toggles for hosted email receipts and product line items.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutEcConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ec_email` | [`CheckoutEcEmailConfiguration`](../../doc/models/checkout-ec-email-configuration.md) | Optional | Email-related EC checkout settings. |
| `ec_products` | [`CheckoutEcProductsConfiguration`](../../doc/models/checkout-ec-products-configuration.md) | Optional | Product-related EC checkout settings. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_ec_configuration = CheckoutEcConfiguration.new(
  ec_email: CheckoutEcEmailConfiguration.new(
    enabled: false,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  ec_products: CheckoutEcProductsConfiguration.new(
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

