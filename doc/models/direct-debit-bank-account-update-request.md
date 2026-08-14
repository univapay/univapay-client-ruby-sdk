
# Direct Debit Bank Account Update Request

Request payload for updating a registered bank account. Omitted fields are left unchanged.

*This model accepts additional fields of type Object.*

## Structure

`DirectDebitBankAccountUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_number` | `String` | Optional | The merchant's own membership number for the consumer (会員番号). Alphanumeric.<br><br>**Constraints**: *Pattern*: `^[a-zA-Z0-9]+$` |
| `bank_code` | `String` | Optional | Four-digit code identifying the consumer's bank (銀行コード).<br><br>**Constraints**: *Minimum Length*: `4`, *Maximum Length*: `4`, *Pattern*: `^[0-9]{4}$` |
| `bank_name` | `String` | Optional | Bank name in half-width katakana (銀行名).<br><br>**Constraints**: *Maximum Length*: `15` |
| `branch_code` | `String` | Optional | Three-digit code identifying the bank branch (支店コード).<br><br>**Constraints**: *Minimum Length*: `3`, *Maximum Length*: `3`, *Pattern*: `^[0-9]{3}$` |
| `bank_account_type` | [`DirectDebitBankAccountType`](../../doc/models/direct-debit-bank-account-type.md) | Optional | Deposit account type (預金種類) — `regular` (普通), `current` (当座), `savings` (貯蓄) or `others` (その他). |
| `bank_account_name` | `String` | Optional | Account holder name (口座名義), in half-width katakana. Full-width characters are rejected by the bank.<br><br>**Constraints**: *Maximum Length*: `30`, *Pattern*: `^[A-Z0-9ｱ-ﾝﾞﾟ().\- ]{1,30}$` |
| `bank_account_number` | `String` | Optional | Seven-digit account number (口座番号).<br><br>**Constraints**: *Minimum Length*: `7`, *Maximum Length*: `7`, *Pattern*: `^[0-9]{7}$` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
direct_debit_bank_account_update_request = DirectDebitBankAccountUpdateRequest.new(
  user_number: 'SD02688328',
  bank_code: '0012',
  bank_name: 'ﾗｸﾃﾝｷﾞﾝｺｳ',
  branch_code: '120',
  bank_account_type: DirectDebitBankAccountType::REGULAR,
  bank_account_name: 'ﾀﾅｶﾕﾐｺ',
  bank_account_number: '1234567',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

