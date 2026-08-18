
# Subscription Simulation Request

Request payload for simulating a subscription payment schedule without creating a live subscription. Specify exactly one of 'period' or 'cyclical_period' to define the billing frequency. 'installment_plan' and 'subscription_plan' are mutually exclusive — specify at most one to model a limited-cycle schedule.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionSimulationRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | Amount to be charged in each cycle. Must be a positive integer.<br><br>**Constraints**: `>= 1` |
| `currency` | `String` | Required | ISO-4217 currency code. |
| `payment_type` | [`TransactionTokenPaymentType`](../../doc/models/transaction-token-payment-type.md) | Required | Transaction Token Payment Type schema. |
| `initial_amount` | `Integer` | Optional | Optional different amount for the first charge. Must be zero or greater.<br><br>**Constraints**: `>= 0` |
| `period` | [`SubscriptionSimulationPeriod`](../../doc/models/subscription-simulation-period.md) | Optional | Billing frequency for the simulated schedule. Includes `bimonthly`, which is not offered on `SubscriptionPeriod` for live subscription creation. |
| `cyclical_period` | `String` | Optional | ISO-8601 Duration for custom frequency (e.g., P3D, P2M). Cannot be used together with 'period' — specify exactly one of the two. |
| `schedule_settings` | [`SubscriptionScheduleSettings`](../../doc/models/subscription-schedule-settings.md) | Required | Schedule settings applied to a subscription. |
| `installment_plan` | [`SubscriptionSimulationPlanSettings`](../../doc/models/subscription-simulation-plan-settings.md) | Optional | Cycle-limiting plan configuration used to simulate an installment plan or a Univapay-side subscription plan. |
| `subscription_plan` | [`SubscriptionSimulationPlanSettings`](../../doc/models/subscription-simulation-plan-settings.md) | Optional | Cycle-limiting plan configuration used to simulate an installment plan or a Univapay-side subscription plan. |
| `only_direct_currency` | `TrueClass \| FalseClass` | Optional | Whether only direct currency processing is allowed. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_simulation_request = SubscriptionSimulationRequest.new(
  amount: 1000,
  currency: 'JPY',
  payment_type: TransactionTokenPaymentType::CARD,
  schedule_settings: SubscriptionScheduleSettings.new(
    zone_id: 'Asia/Tokyo'
  ),
  period: SubscriptionSimulationPeriod::MONTHLY
)
```

