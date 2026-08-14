
# Direct Debit Merchant Configuration

The merchant's effective direct debit configuration.

*This model accepts additional fields of type Object.*

## Structure

`DirectDebitMerchantConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `legacy_id` | `String` | Optional | Identifier of the merchant in the legacy direct debit system.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether direct debit is enabled for this merchant. |
| `debit_date` | [`DirectDebitDebitDate`](../../doc/models/direct-debit-debit-date.md) | Optional | Monthly debit cycle — funds are pulled on either the 14th or the 27th. |
| `consignor_code` | `String` | Optional | Consignor code (委託者コード) assigned by the collecting bank.<br><br>**Constraints**: *Minimum Length*: `6`, *Maximum Length*: `6`, *Pattern*: `^[0-9]{6}$` |
| `classifier` | `String` | Optional | Transfer classification code (区分) agreed with the collecting bank.<br><br>**Constraints**: *Minimum Length*: `2`, *Maximum Length*: `2`, *Pattern*: `^[0-9]{2}$` |
| `signature` | `String` | Optional | Name printed on the consumer's bank statement (印字名), in half-width katakana. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
direct_debit_merchant_configuration = DirectDebitMerchantConfiguration.new(
  legacy_id: '1283794',
  enabled: true,
  debit_date: DirectDebitDebitDate::FOURTEEN,
  consignor_code: '135456',
  classifier: '99',
  signature: 'モモサン',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

