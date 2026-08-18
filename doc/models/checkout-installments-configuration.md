
# Checkout Installments Configuration

Installment plan configuration applied to checkout.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutInstallmentsConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether installment plans are enabled. |
| `card_processor` | [`CheckoutInstallmentCardProcessor`](../../doc/models/checkout-installment-card-processor.md) | Optional | Card-processor capabilities available for installment payments. |
| `supported_payment_types` | [`Array[CheckoutPaymentType]`](../../doc/models/checkout-payment-type.md) | Optional | Payment types eligible for installment plans. |
| `min_charge_amount` | [`CheckoutMoneyAmount`](../../doc/models/checkout-money-amount.md) | Optional | Minimum charge amount eligible for installment plans. `null` when unrestricted. |
| `max_payout_period` | `String` | Optional | ISO-8601 period bounding the maximum payout delay for installment settlements. `null` when unrestricted. |
| `only_with_processor` | `TrueClass \| FalseClass` | Optional | Whether installment plans are restricted to processor-backed flows. Always `true` — retained for backwards compatibility. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_installments_configuration = CheckoutInstallmentsConfiguration.new(
  enabled: true,
  card_processor: CheckoutInstallmentCardProcessor.new(
    revolving: false,
    fixed_cycle: false,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  supported_payment_types: [
    CheckoutPaymentType::CARD
  ],
  min_charge_amount: nil,
  max_payout_period: 'max_payout_period0',
  only_with_processor: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

