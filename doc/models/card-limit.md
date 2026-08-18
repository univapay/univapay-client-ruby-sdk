
# Card Limit

Per-card spending limit enforced on card payments, evaluated over a rolling duration.

*This model accepts additional fields of type Object.*

## Structure

`CardLimit`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Optional | Maximum amount a single card may charge within `duration`. |
| `currency` | `String` | Optional | ISO-4217 currency code. |
| `amount_formatted` | `Float` | Optional | Limit amount formatted for display. |
| `duration` | `String` | Optional | ISO-8601 period over which the limit is evaluated (e.g. P1M). |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
card_limit = CardLimit.new(
  amount: 100000,
  currency: 'JPY',
  amount_formatted: 100000,
  duration: 'P1M',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

