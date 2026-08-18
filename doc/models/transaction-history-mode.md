
# Transaction History Mode

Environment mode: `live` and `test` reflect the credential used to authenticate, while `live_test` is reserved for privileged callers testing against live-mode data.

## Enumeration

`TransactionHistoryMode`

## Fields

| Name |
|  --- |
| `LIVE` |
| `TEST` |
| `LIVE_TEST` |

## Example

```ruby
transaction_history_mode = TransactionHistoryMode::LIVE
```

