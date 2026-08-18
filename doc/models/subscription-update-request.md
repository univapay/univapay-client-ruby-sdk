
# Subscription Update Request

Request payload for updating a subscription.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_token_id` | `UUID \| String` | Optional | Transaction token ID used for the subscription.  Can be changed to update the payment method (e.g., when a card expires).  Allowed only when the status is `unconfirmed`, `unpaid`, `current`, or `suspended`. |
| `amount` | `Integer` | Optional | The recurring charge amount (applied to the cycle after the next one).  Not available for limited-cycle subscriptions.  To change the immediate next payment amount, update `next_payment.amount` instead. |
| `period` | [`SubscriptionPeriod`](../../doc/models/subscription-period.md) | Optional | Subscription Period schema. |
| `cyclical_period` | `String` | Optional | ISO-8601 Duration for custom frequency (e.g., P3D, P2M). Cannot be used together with `period`. Only allowed before the subscription's first payment has been paid. |
| `initial_amount` | `Integer` | Optional | Different amount for the first charge. Only allowed while the subscription status is still editable (before it has started) and requires the App Token Secret. |
| `subscription_plan` | [`SubscriptionPlanSettings`](../../doc/models/subscription-plan-settings.md) | Optional | Configuration for limited-cycle subscriptions (Univapay side). |
| `installment_plan` | [`SubscriptionInstallmentPlan`](../../doc/models/subscription-installment-plan.md) | Optional | Configuration for credit card company side installments. |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `status` | [`SubscriptionUpdateStatus`](../../doc/models/subscription-update-status.md) | Optional | Update the subscription status.  `suspended`: Pause the subscription.  `unpaid`: Resume a suspended subscription. |
| `schedule_settings` | [`SubscriptionUpdateScheduleSettings`](../../doc/models/subscription-update-schedule-settings.md) | Optional | Schedule settings that can be updated on a subscription. |
| `next_payment` | [`SubscriptionUpdateNextPayment`](../../doc/models/subscription-update-next-payment.md) | Optional | Fields that can be updated on the next scheduled payment. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_update_request = SubscriptionUpdateRequest.new(
  transaction_token_id: '11ef3362-3700-c54a-9baa-6f7e6527c9d9',
  metadata: GenericMetadata.new(
    order_id: '12345'
  ),
  schedule_settings: SubscriptionUpdateScheduleSettings.new(
    termination_mode: SubscriptionTerminationMode::ON_NEXT_PAYMENT
  ),
  next_payment: SubscriptionUpdateNextPayment.new(
    due_date: Date.iso8601('2030-01-01')
  )
)
```

