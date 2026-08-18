
# Transaction History Refund Reason

Reason code for a refund.

## Enumeration

`TransactionHistoryRefundReason`

## Fields

| Name |
|  --- |
| `DUPLICATE` |
| `FRAUD` |
| `CUSTOMER_REQUEST` |
| `SYSTEM_FAILURE` |
| `CHARGEBACK` |
| `CHARGEBACK_FEE_EXEMPT` |
| `CHARGEBACK_REVERSE` |

## Example

```ruby
transaction_history_refund_reason = TransactionHistoryRefundReason::CHARGEBACK_FEE_EXEMPT
```

