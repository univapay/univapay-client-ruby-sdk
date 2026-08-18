
# Recurring Cvv Confirmation

CVV re-confirmation policy applied to recurring card charges (subscriptions and tokens with recurring privilege).

*This model accepts additional fields of type Object.*

## Structure

`RecurringCvvConfirmation`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether CVV re-confirmation is required for recurring card charges. Resolves to `false` when not configured. |
| `threshold` | [`Array[CheckoutMoneyAmount]`](../../doc/models/checkout-money-amount.md) | Optional | Amount thresholds above which CVV re-confirmation is required. `null` when no threshold is configured. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
recurring_cvv_confirmation = RecurringCvvConfirmation.new(
  enabled: false,
  threshold: [
    nil
  ],
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

