
# Subscription Schedule Settings

Schedule settings applied to a subscription.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionScheduleSettings`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `start_on` | `Date` | Optional | Date when the recurring schedule starts (YYYY-MM-DD). |
| `zone_id` | `String` | Optional | IANA Timezone ID. |
| `preserve_end_of_month` | `TrueClass \| FalseClass` | Optional | If true, subsequent charges will always occur on the last day of the month. |
| `retry_interval` | `String` | Optional | ISO-8601 Duration for retry interval if payment fails (e.g., P5D). |
| `termination_mode` | [`SubscriptionTerminationMode`](../../doc/models/subscription-termination-mode.md) | Optional | Subscription Termination Mode schema.<br><br>**Default**: `SubscriptionTerminationMode::IMMEDIATE` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_schedule_settings = SubscriptionScheduleSettings.new
```

