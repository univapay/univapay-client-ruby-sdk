
# Transaction Token

Stored transaction token resource. `payment_type` discriminates which variant applies — and therefore the concrete shape of `data` — per the mapping above.

## Data Type

`CardTransactionToken | KonbiniTransactionToken | OnlineTransactionToken | BankTransferTransactionToken | PaidyTransactionToken | QrScanTransactionToken | QrMerchantTransactionToken`

## Cases

| Type |
|  --- |
| [`CardTransactionToken`](../../../doc/models/card-transaction-token.md) |
| [`KonbiniTransactionToken`](../../../doc/models/konbini-transaction-token.md) |
| [`OnlineTransactionToken`](../../../doc/models/online-transaction-token.md) |
| [`BankTransferTransactionToken`](../../../doc/models/bank-transfer-transaction-token.md) |
| [`PaidyTransactionToken`](../../../doc/models/paidy-transaction-token.md) |
| [`QrScanTransactionToken`](../../../doc/models/qr-scan-transaction-token.md) |
| [`QrMerchantTransactionToken`](../../../doc/models/qr-merchant-transaction-token.md) |

## CardTransactionToken

### Initialization Code

#### Example

```ruby
value = CardTransactionToken.new(
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
      sub_brand: 'none'
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
        local_number: '08012341234'
      )
    ),
    cvv_authorize: TokenResponseCardDataCvvAuthorize.new(
      enabled: true,
      status: 'successful',
      charge_id: nil,
      credentials_id: nil,
      currency: 'JPY'
    ),
    cvv_authorize_check: TokenResponseCardDataCvvAuthorizeCheck.new(
      status: 'successful',
      charge_id: nil,
      date: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z')
    ),
    three_ds: TokenResponseCardDataThreeDs.new(
      enabled: true,
      status: TokenResponseCardDataThreeDsStatus::SUCCESSFUL,
      redirect_endpoint: nil,
      redirect_id: nil,
      exempted: false,
      error: nil
    )
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
  last_used_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z')
)
```

## KonbiniTransactionToken

### Initialization Code

#### Example

```ruby
value = KonbiniTransactionToken.new(
  payment_type: 'konbini',
  data: TokenResponseKonbiniData.new(
    customer_name: 'Taro Yamada',
    convenience_store: BaseKonbiniDataConvenienceStore::SEVEN_ELEVEN,
    expiration_period: 'P7D',
    expiration_time_shift: nil,
    phone_number: TokenResponsePhoneNumber.new(
      country_code: 81,
      local_number: '08012341234'
    )
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
  last_used_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z')
)
```

## OnlineTransactionToken

### Initialization Code

#### Example

```ruby
value = OnlineTransactionToken.new(
  payment_type: 'online',
  data: TokenResponseOnlineData.new(
    brand: BaseOnlineDataBrand::WE_CHAT_ONLINE,
    call_method: BaseOnlineDataCallMethod::WEB,
    user_identifier: 'wechat_open_id_12345'
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
  last_used_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z')
)
```

## BankTransferTransactionToken

### Initialization Code

#### Example

```ruby
value = BankTransferTransactionToken.new(
  payment_type: 'bank_transfer',
  data: TokenResponseBankTransferData.new(
    brand: 'aozora_bank',
    expiration_period: 'PT168H',
    expiration_time_shift: '23:59:59+09:00',
    bank_code: '0310',
    bank_name: 'GMOあおぞらネット銀行',
    branch_code: '123',
    branch_name: 'Test Branch',
    account_number: '1234567',
    account_holder_name: 'TARO YAMADA'
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
  last_used_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z')
)
```

## PaidyTransactionToken

### Initialization Code

#### Example

```ruby
value = PaidyTransactionToken.new(
  payment_type: 'paidy',
  data: TokenResponsePaidyData.new(
    paidy_token: 'paidy-token-abc123',
    phone_number: '08012341234',
    shipping_address: TokenResponsePaidyDataShippingAddress.new(
      zip: '105-0011',
      line1: '1-1-1',
      city: 'Minato',
      state: 'Tokyo'
    )
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
  last_used_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z')
)
```

## QrScanTransactionToken

### Initialization Code

#### Example

```ruby
value = QrScanTransactionToken.new(
  payment_type: 'qr_scan',
  data: TokenResponseQrScanData.new(
    brand: 'pay_pay'
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
  last_used_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z')
)
```

## QrMerchantTransactionToken

### Initialization Code

#### Example

```ruby
value = QrMerchantTransactionToken.new(
  payment_type: 'qr_merchant',
  data: TokenResponseQrMerchantData.new(
    qr_image_url: '71001234567890202604141200450',
    brand: 'pay_pay_merchant'
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
  last_used_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z')
)
```

