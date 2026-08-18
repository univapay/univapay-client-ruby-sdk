
# Card Transaction Token

Stored transaction token resource for a `card` payment type.

*This model accepts additional fields of type Object.*

## Structure

`CardTransactionToken`

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
| `payment_type` | `String` | Required, Constant | Payment method type. Always `card` for this variant.<br><br>**Value**: `'card'` |
| `data` | [`TokenResponseCardData`](../../doc/models/token-response-card-data.md) | Required | Token Response Card Data schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
card_transaction_token = CardTransactionToken.new(
  payment_type: 'card',
  data: TokenResponseCardData.new(
    card: TokenResponseCardDataCard.new(
      cardholder: 'TARO YAMADA',
      exp_month: 12,
      exp_year: 2026,
      card_bin: '424242',
      last_four: '4242',
      brand: 'visa',
      card_type: 'credit',
      country: 'JP',
      category: 'standard',
      issuer: nil,
      sub_brand: 'none',
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    billing: TokenResponseCardDataBilling.new(
      line1: '1-1-1',
      line2: 'Shibakoen',
      state: 'Tokyo',
      city: 'Minato',
      country: 'JP',
      zip: '105-0011',
      phone_number: TokenResponsePhoneNumber.new(
        country_code: 81,
        local_number: '08012341234',
        additional_properties: {
          'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
        }
      ),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    cvv_authorize: TokenResponseCardDataCvvAuthorize.new(
      enabled: true,
      status: 'successful',
      charge_id: nil,
      credentials_id: nil,
      currency: 'JPY',
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    cvv_authorize_check: TokenResponseCardDataCvvAuthorizeCheck.new(
      status: 'successful',
      charge_id: nil,
      date: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    three_ds: TokenResponseCardDataThreeDs.new(
      enabled: true,
      status: TokenResponseCardDataThreeDsStatus::SUCCESSFUL,
      redirect_endpoint: nil,
      redirect_id: nil,
      exempted: false,
      error: nil,
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
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

