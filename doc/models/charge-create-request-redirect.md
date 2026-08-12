
# Charge Create Request Redirect

Charge Create Request Redirect schema.

*This model accepts additional fields of type Object.*

## Structure

`ChargeCreateRequestRedirect`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `endpoint` | `String` | Optional | URL to redirect the customer to after payment completion. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_create_request_redirect = ChargeCreateRequestRedirect.new
```

