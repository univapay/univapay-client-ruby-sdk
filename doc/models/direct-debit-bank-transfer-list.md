
# Direct Debit Bank Transfer List

Paginated list of direct debit bank transfers.

*This model accepts additional fields of type Object.*

## Structure

`DirectDebitBankTransferList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[DirectDebitBankTransfer]`](../../doc/models/direct-debit-bank-transfer.md) | Optional | List of resources. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether more results are available. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
direct_debit_bank_transfer_list = DirectDebitBankTransferList.new(
  items: [
    DirectDebitBankTransfer.new(
      id: '2594976',
      legacy_store_id: '1283794',
      merchant_id: '01234567-89ab-cdef-0123-456789abcdef',
      bank_account_id: '1098116',
      user_number: 'SD02688328',
      bank_code: '0012',
      bank_name: 'ﾗｸﾃﾝｷﾞﾝｺｳ',
      branch_code: '120',
      bank_account_type: DirectDebitBankAccountType::REGULAR,
      bank_account_name: 'ﾀﾅｶﾕﾐｺ',
      bank_account_number: '1234567',
      amount: 1000,
      debit_date: DirectDebitDebitDate::FOURTEEN,
      calculated_debit_date: Date.iso8601('2026-03-14'),
      lock: DirectDebitBankTransferLock::UNLOCKED,
      status: DirectDebitBankTransferStatus::AWAITING,
      error: nil,
      created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000Z'),
      updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    DirectDebitBankTransfer.new(
      id: '2594977',
      legacy_store_id: '1283794',
      merchant_id: '01234567-89ab-cdef-0123-456789abcdef',
      bank_account_id: '1098117',
      user_number: 'SD02688329',
      bank_code: '0009',
      bank_name: 'ﾐﾂｲｽﾐﾄﾓ',
      branch_code: '221',
      bank_account_type: DirectDebitBankAccountType::CURRENT,
      bank_account_name: 'ｽｽﾞｷﾀﾛｳ',
      bank_account_number: '7654321',
      amount: 1850,
      debit_date: DirectDebitDebitDate::TWENTY_SEVEN,
      calculated_debit_date: Date.iso8601('2026-03-27'),
      lock: DirectDebitBankTransferLock::LOCKED,
      status: DirectDebitBankTransferStatus::FAILED,
      error: DirectDebitBankTransferError::INSUFFICIENT_FUNDS,
      created_on: DateTimeHelper.from_rfc3339('2026-04-10T09:12:04.000Z'),
      updated_on: DateTimeHelper.from_rfc3339('2026-04-12T11:03:41.000Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  ],
  has_more: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

