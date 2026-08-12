
# Charge Three Ds

Charge Three Ds schema.

*This model accepts additional fields of type Object.*

## Structure

`ChargeThreeDs`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `redirect_endpoint` | `String` | Optional | Redirect endpoint URL. |
| `mode` | `String` | Optional | Processing mode for the resource. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_three_ds = ChargeThreeDs.new
```

