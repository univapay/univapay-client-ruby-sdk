
# Subscription Webhook Event

Webhook envelope for subscription lifecycle events. Fired as `subscription_created` when a subscription is created and its first payment initiated, `subscription_payment` when a scheduled payment processes successfully, `subscription_completed` when all scheduled payments complete, `subscription_failure` when a scheduled payment fails, `subscription_canceled` when a subscription is cancelled before all payments complete, and `subscription_suspended` when a subscription is paused. The `data` field contains the full Subscription object at the time of the event.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionWebhookEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Required | Unique ID of this webhook delivery. |
| `event` | [`SubscriptionEvent`](../../doc/models/subscription-event.md) | Required | Event type discriminator — `subscription_created`, `subscription_payment`, `subscription_completed`, `subscription_failure`, `subscription_canceled`, or `subscription_suspended`. |
| `data` | [`Subscription`](../../doc/models/subscription.md) | Optional | The Subscription object represents a recurring payment schedule. |
| `created_on` | `DateTime` | Required | Timestamp when the event was fired. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_webhook_event = SubscriptionWebhookEvent.new(
  id: '11ef0000-0000-4000-8000-000000000001',
  event: SubscriptionEvent::SUBSCRIPTION_CREATED,
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  data: Subscription.new(
    id: '11ef335e-9aa5-c54a-8313-7f9847da313a',
    store_id: '11edf541-c42d-653c-8c3d-dfe0a55f95c0',
    transaction_token_id: '11ef32a7-3a71-8662-803f-1bc27702eeec',
    amount: 1250,
    currency: 'USD',
    amount_formatted: 12.5,
    schedule_settings: SubscriptionScheduleSettings.new(
      start_on: Date.iso8601('2024-07-01'),
      zone_id: 'Asia/Tokyo',
      preserve_end_of_month: false,
      retry_interval: 'P7D',
      termination_mode: SubscriptionTerminationMode::ON_NEXT_PAYMENT
    ),
    only_direct_currency: false,
    first_charge_authorization_only: false,
    status: SubscriptionStatus::CURRENT,
    metadata: GenericMetadata.new(
      order_id: '12345'
    ),
    mode: ChargeMode::TEST,
    created_on: DateTimeHelper.from_rfc3339('2024-06-26T01:51:28.627023Z'),
    period: SubscriptionPeriod::MONTHLY
  )
)
```

