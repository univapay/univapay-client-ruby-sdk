
# Charge Capture Request

Request payload for capturing an authorized charge. Both fields are optional; omit the entire body to capture the full outstanding amount.

*This model accepts additional fields of type Object.*

## Structure

`ChargeCaptureRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Optional | The amount to capture. Must be less than or equal to the authorized amount. If omitted, the full outstanding authorized amount is captured. |
| `currency` | `String` | Optional | ISO-4217 currency code. Must exactly match the currency used during authorization. If omitted, defaults to the currency originally requested on the charge. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_capture_request = ChargeCaptureRequest.new(
  amount: 1000,
  currency: 'JPY'
)
```

