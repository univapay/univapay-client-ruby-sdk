
# Transaction History Refund

A single refund issued against the charge this row describes.

*This model accepts additional fields of type Object.*

## Structure

`TransactionHistoryRefund`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `refund_id` | `UUID \| String` | Optional | Unique identifier of the refund. |
| `amount` | `Integer` | Optional | Refunded amount, in the currency's minor unit. |
| `currency` | `String` | Optional | ISO-4217 currency code. |
| `amount_formatted` | `Float` | Optional | Refunded amount, formatted per the currency's display scale. |
| `status` | [`TransactionHistoryRefundStatus`](../../doc/models/transaction-history-refund-status.md) | Optional | Status of a single refund entry. |
| `reason` | [`TransactionHistoryRefundReason`](../../doc/models/transaction-history-refund-reason.md) | Optional | Reason code for a refund. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
transaction_history_refund = TransactionHistoryRefund.new(
  refund_id: '11ef0000-0000-4000-8000-000000000010',
  amount: 500,
  currency: 'JPY',
  amount_formatted: 500,
  status: TransactionHistoryRefundStatus::SUCCESSFUL,
  reason: TransactionHistoryRefundReason::CUSTOMER_REQUEST,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

