
# Subscription Installment Plan

Configuration for credit card company side installments.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionInstallmentPlan`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_type` | [`InstallmentPlanType`](../../doc/models/installment-plan-type.md) | Optional | Plan type selector. |
| `fixed_cycles` | [`InstallmentFixedCycles`](../../doc/models/installment-fixed-cycles.md) | Optional | Required if plan_type is fixed_cycles. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_installment_plan = SubscriptionInstallmentPlan.new
```

