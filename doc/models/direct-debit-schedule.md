
# Direct Debit Schedule

The key dates for one debit cycle. Use these to work out whether the current month's registration window is still open.

*This model accepts additional fields of type Object.*

## Structure

`DirectDebitSchedule`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_bank_account_transfer_date` | `Date` | Optional | The date funds are pulled from consumer accounts (指定振替日). |
| `merchant_bank_account_registration_deadline` | `Date` | Optional | The date by which the bank must receive the signed direct debit mandate (振替依頼書到着期限). |
| `merchant_bank_transfer_upload_deadline` | `Date` | Optional | The last date transfers can be registered or edited for this cycle (振替データアップロード期限). After this, transfers lock. |
| `platform_result_registration_date` | `Date` | Optional | The date transfer results are reflected on the platform (振替結果反映日). |
| `platform_scheduled_payout` | `Date` | Optional | The date collected funds are paid out to the merchant (支払日). |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
direct_debit_schedule = DirectDebitSchedule.new(
  merchant_bank_account_transfer_date: Date.iso8601('2026-03-14'),
  merchant_bank_account_registration_deadline: Date.iso8601('2026-02-20'),
  merchant_bank_transfer_upload_deadline: Date.iso8601('2026-03-04'),
  platform_result_registration_date: Date.iso8601('2026-03-24'),
  platform_scheduled_payout: Date.iso8601('2026-03-31'),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

