
# Issuer Token Payload

A dictionary containing necessary key-value pairs for sending the request.

*This model accepts additional fields of type Object.*

## Structure

`IssuerTokenPayload`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_data` | `String` | Optional | Generic payload key used by most payment providers. |
| `s_spcd` | `String` | Optional | d-barai payment service code. |
| `s_cptok` | `String` | Optional | d-barai coupon token. |
| `s_terkn` | `String` | Optional | d-barai terminal key. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
issuer_token_payload = IssuerTokenPayload.new
```

