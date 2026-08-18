
# Checkout Money Amount

Monetary amount used by checkout configuration limits and thresholds.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutMoneyAmount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Optional | Amount in the smallest unit of the currency. |
| `amount_formatted` | `Float` | Optional | Amount formatted for display. |
| `currency` | `String` | Optional | ISO-4217 currency code. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_money_amount = CheckoutMoneyAmount.new(
  amount: 1000,
  amount_formatted: 1000,
  currency: 'JPY',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

