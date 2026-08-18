
# Checkout Subscription Configuration

Univapay-hosted subscription feature toggle.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutSubscriptionConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether Univapay-hosted subscriptions are enabled. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_subscription_configuration = CheckoutSubscriptionConfiguration.new(
  enabled: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

