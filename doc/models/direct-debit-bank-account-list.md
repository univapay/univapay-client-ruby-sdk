
# Direct Debit Bank Account List

Paginated list of direct debit bank accounts.

*This model accepts additional fields of type Object.*

## Structure

`DirectDebitBankAccountList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[DirectDebitBankAccount]`](../../doc/models/direct-debit-bank-account.md) | Optional | List of resources. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether more results are available. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
direct_debit_bank_account_list = DirectDebitBankAccountList.new(
  items: [
    DirectDebitBankAccount.new(
      id: '1098116',
      legacy_store_id: '1283794',
      merchant_id: '01234567-89ab-cdef-0123-456789abcdef',
      user_number: 'SD02688328',
      bank_code: '0012',
      bank_name: 'ﾗｸﾃﾝｷﾞﾝｺｳ',
      branch_code: '120',
      bank_account_type: DirectDebitBankAccountType::REGULAR,
      bank_account_name: 'ﾀﾅｶﾕﾐｺ',
      bank_account_number: '1234567',
      registration_origin: DirectDebitRegistrationOrigin::MERCHANT_CONSOLE,
      status: DirectDebitBankAccountStatus::ACTIVE,
      created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000Z'),
      updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    DirectDebitBankAccount.new(
      id: '1098117',
      legacy_store_id: '1283794',
      merchant_id: '01234567-89ab-cdef-0123-456789abcdef',
      user_number: 'SD02688329',
      bank_code: '0009',
      bank_name: 'ﾐﾂｲｽﾐﾄﾓ',
      branch_code: '221',
      bank_account_type: DirectDebitBankAccountType::CURRENT,
      bank_account_name: 'ｽｽﾞｷﾀﾛｳ',
      bank_account_number: '7654321',
      registration_origin: DirectDebitRegistrationOrigin::ANYWHERE,
      status: DirectDebitBankAccountStatus::INACTIVE,
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

