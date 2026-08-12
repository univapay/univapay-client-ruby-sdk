
# Webhook Update Request

Request body for updating a webhook. All fields are optional. Omitted fields are left unchanged.

*This model accepts additional fields of type Object.*

## Structure

`WebhookUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `triggers` | [`Array[WebhookTrigger]`](../../doc/models/webhook-trigger.md) | Optional | Replace the trigger list. Must be non-empty if provided. |
| `url` | `String` | Optional | Update the webhook endpoint URL. |
| `auth_token` | `String` | Optional | Update or clear the auth token. Send `null` to remove. |
| `active` | `TrueClass \| FalseClass` | Optional | Enable or disable the webhook. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
webhook_update_request = WebhookUpdateRequest.new(
  active: false
)
```

