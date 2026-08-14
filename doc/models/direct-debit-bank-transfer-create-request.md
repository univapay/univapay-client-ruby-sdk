
# Direct Debit Bank Transfer Create Request

Request payload for scheduling a transfer against an active bank account.

*This model accepts additional fields of type Object.*

## Structure

`DirectDebitBankTransferCreateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | Transfer amount in JPY. Must be a positive, non-zero whole number.<br><br>**Constraints**: `>= 1` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
direct_debit_bank_transfer_create_request = DirectDebitBankTransferCreateRequest.new(
  amount: 1000,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

