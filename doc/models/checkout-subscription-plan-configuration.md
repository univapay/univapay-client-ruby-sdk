
# Checkout Subscription Plan Configuration

Univapay-side subscription plan configuration applied to checkout.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutSubscriptionPlanConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether subscription plans are enabled. |
| `fixed_cycle` | `TrueClass \| FalseClass` | Optional | Whether fixed-cycle subscription plans are allowed. |
| `fixed_cycle_amount` | `TrueClass \| FalseClass` | Optional | Whether fixed-cycle-amount subscription plans are allowed. |
| `supported_payment_types` | [`Array[CheckoutPaymentType]`](../../doc/models/checkout-payment-type.md) | Optional | Payment types eligible for subscription plans. |
| `min_charge_amount` | [`CheckoutMoneyAmount`](../../doc/models/checkout-money-amount.md) | Optional | Minimum charge amount eligible for subscription plans. `null` when unrestricted. |
| `max_payout_period` | `String` | Optional | ISO-8601 period bounding the maximum payout delay for subscription settlements. `null` when unrestricted. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_subscription_plan_configuration = CheckoutSubscriptionPlanConfiguration.new(
  enabled: true,
  fixed_cycle: true,
  fixed_cycle_amount: true,
  supported_payment_types: [
    CheckoutPaymentType::CARD
  ],
  min_charge_amount: nil,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

