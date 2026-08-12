
# Webhook Event

Represents a single delivery attempt of a webhook event, including the payload sent and the delivery outcome.

*This model accepts additional fields of type Object.*

## Structure

`WebhookEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique identifier for the webhook event. |
| `webhook_id` | `UUID \| String` | Optional | ID of the parent webhook. |
| `event` | [`WebhookTrigger`](../../doc/models/webhook-trigger.md) | Optional | Event type that triggers a webhook notification. |
| `data` | `Object` | Optional | Domain object payload for webhook deliveries. The actual structure depends on the event type — see each webhook callback schema for the specific payload shape. |
| `successful` | `TrueClass \| FalseClass` | Optional | Whether the webhook delivery was acknowledged (HTTP 2xx). |
| `fired_on` | `DateTime` | Optional | Timestamp when the webhook was dispatched. |
| `error_message` | `String` | Optional | Error message if delivery failed. |
| `created_on` | `DateTime` | Optional | Timestamp when the event was created. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
webhook_event = WebhookEvent.new
```

