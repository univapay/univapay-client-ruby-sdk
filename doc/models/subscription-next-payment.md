
# Subscription Next Payment

Next scheduled payment details for a subscription.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionNextPayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique identifier. |
| `due_date` | `Date` | Optional | Scheduled due date. |
| `zone_id` | `String` | Optional | IANA timezone identifier. |
| `amount` | `Integer` | Optional | Amount in the smallest currency unit. |
| `currency` | `String` | Optional | ISO-4217 currency code. |
| `amount_formatted` | `Float` | Optional | Amount formatted for display. |
| `is_paid` | `TrueClass \| FalseClass` | Optional | Whether the payment has been paid. |
| `is_last_payment` | `TrueClass \| FalseClass` | Optional | Whether this is the final payment in the schedule. |
| `created_on` | `DateTime` | Optional | Timestamp when the resource was created. |
| `updated_on` | `DateTime` | Optional | Timestamp when the resource was last updated. |
| `retry_date` | `Date` | Optional | Scheduled retry date. |
| `terminate_with_status` | [`SubscriptionTerminateWithStatus`](../../doc/models/subscription-terminate-with-status.md) | Optional | Schedule a status transition on a payment's due date. Set to `suspended` or `canceled` to schedule termination. Send `null` to cancel a previously scheduled transition. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_next_payment = SubscriptionNextPayment.new
```

