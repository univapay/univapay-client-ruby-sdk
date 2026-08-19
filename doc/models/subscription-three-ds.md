
# Subscription Three Ds

3-D Secure configuration and redirect details applied to the subscription's payments.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionThreeDs`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mode` | [`SubscriptionThreeDsMode`](../../doc/models/subscription-three-ds-mode.md) | Optional | 3-D Secure authentication mode applied to the subscription's payments. `if_available` enforces 3DS only if credentials are available for the recurring token and it has not already completed 3DS. `provided` indicates externally supplied MPI authentication data was used. |
| `redirect_endpoint` | `String` | Optional | URL the customer is redirected to for 3-D Secure authentication. |
| `redirect_id` | `UUID \| String` | Optional | Identifier of the 3-D Secure redirect. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_three_ds = SubscriptionThreeDs.new
```

