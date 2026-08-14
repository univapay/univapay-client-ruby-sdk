
# Direct Debit Bank Transfer Patch Request

Request payload for changing a transfer's amount. Only permitted while the transfer is unlocked.

*This model accepts additional fields of type Object.*

## Structure

`DirectDebitBankTransferPatchRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | Transfer amount in JPY. Must be a positive, non-zero whole number.<br><br>**Constraints**: `>= 1` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
direct_debit_bank_transfer_patch_request = DirectDebitBankTransferPatchRequest.new(
  amount: 1000,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

