
# Online Transaction Token

Stored transaction token resource for an `online` payment type.

*This model accepts additional fields of type Object.*

## Structure

`OnlineTransactionToken`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique identifier. |
| `store_id` | `UUID \| String` | Optional | Store identifier. |
| `email` | `String` | Optional | Customer email address. |
| `active` | `TrueClass \| FalseClass` | Optional | Whether the resource is active. |
| `mode` | [`TransactionTokenMode`](../../doc/models/transaction-token-mode.md) | Optional | Transaction Token Mode schema. |
| `type` | [`TransactionTokenType`](../../doc/models/transaction-token-type.md) | Optional | Transaction Token Type schema. |
| `usage_limit` | `String` | Optional | Usage limit applied to the token. |
| `confirmed` | `TrueClass \| FalseClass` | Optional | Whether the token has been confirmed. |
| `metadata` | Hash[String, String \| Float \| TrueClass \| FalseClass] \| nil | Optional | Transaction Token Metadata Additional Properties schema. |
| `created_on` | `DateTime` | Optional | Timestamp when the resource was created. |
| `updated_on` | `DateTime` | Optional | Timestamp when the resource was last updated. |
| `last_used_on` | `DateTime` | Optional | Timestamp when the token was last used. |
| `payment_type` | `String` | Required, Constant | Payment method type. Always `online` for this variant.<br><br>**Value**: `'online'` |
| `data` | [`TokenResponseOnlineData`](../../doc/models/token-response-online-data.md) | Required | Token Response Online Data schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
online_transaction_token = OnlineTransactionToken.new(
  payment_type: 'online',
  data: TokenResponseOnlineData.new(
    brand: BaseOnlineDataBrand::WE_CHAT_ONLINE,
    call_method: BaseOnlineDataCallMethod::WEB,
    os_type: BaseOnlineDataOsType::ANDROID,
    user_identifier: 'wechat_open_id_12345',
    user_identifier_source: BaseOnlineDataUserIdentifierSource::PROVIDED,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  id: '6426bbd2-17bd-41bf-883b-1fe970db48ee',
  store_id: 'fc264608-9a9e-495e-844e-a08129a81af4',
  email: 'test@univapay.com',
  active: true,
  mode: TransactionTokenMode::LIVE,
  type: TransactionTokenType::ONE_TIME,
  usage_limit: 'example',
  confirmed: true,
  metadata: {
    'customer_id' => 'cust_12345'
  },
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  last_used_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

