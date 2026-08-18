
# Checkout Installment Card Processor

Card-processor capabilities available for installment payments.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutInstallmentCardProcessor`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `revolving` | `TrueClass \| FalseClass` | Optional | Whether revolving installment payments are allowed. |
| `fixed_cycle` | `TrueClass \| FalseClass` | Optional | Whether fixed-cycle installment payments are allowed. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_installment_card_processor = CheckoutInstallmentCardProcessor.new(
  revolving: true,
  fixed_cycle: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

