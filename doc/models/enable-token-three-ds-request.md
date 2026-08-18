
# Enable Token Three Ds Request

Request payload for enabling 3DS on a recurring token. Both the body and `redirect_endpoint` are optional.

*This model accepts additional fields of type Object.*

## Structure

`EnableTokenThreeDsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `redirect_endpoint` | `String` | Optional | URL to redirect the customer to after 3DS authentication. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
enable_token_three_ds_request = EnableTokenThreeDsRequest.new
```

