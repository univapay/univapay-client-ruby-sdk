# Transaction History

```ruby
transaction_history_api = client.transaction_history
```

## Class Name

`TransactionHistoryApi`

## Methods

* [List Transaction History](../../doc/controllers/transaction-history.md#list-transaction-history)
* [List Store Transaction History](../../doc/controllers/transaction-history.md#list-store-transaction-history)


# List Transaction History

Returns a paginated, searchable history of charges and refunds across all of the merchant's stores, combining both resource types into a single unified row shape.

```ruby
def list_transaction_history(mode: nil,
                             short_id: nil,
                             from: nil,
                             to: nil,
                             status: nil,
                             type: nil,
                             search: nil,
                             email: nil,
                             id: nil,
                             metadata: nil,
                             card_exp: nil,
                             card_last_four: nil,
                             cardholder: nil,
                             card_brand: nil,
                             brand: nil,
                             brands: nil,
                             currency: nil,
                             service_provider: nil,
                             service_providers: nil,
                             gateway_transaction_id: nil,
                             bank_transfer_payment_statuses: nil,
                             bank_transfer_latest_deposit_date_from: nil,
                             bank_transfer_latest_deposit_date_to: nil,
                             limit: 10,
                             cursor: nil,
                             cursor_direction: CursorDirectionQuery::DESC)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mode` | [`TransactionHistoryMode`](../../doc/models/transaction-history-mode.md) | Query, Optional | Filter by environment mode. |
| `short_id` | `String` | Query, Optional | Filter by the last 6 characters of a resource's UUID. Must be exactly 6 characters. |
| `from` | `String` | Query, Optional | Show rows created on or after this date. Accepts epoch-millis or an ISO-8601 date-time. Must not be later than `to`. |
| `to` | `String` | Query, Optional | Show rows created on or before this date. Accepts epoch-millis or an ISO-8601 date-time. Must not be earlier than `from`. |
| `status` | [`TransactionHistoryStatus`](../../doc/models/transaction-history-status.md) | Query, Optional | Filter by status. Accepts any charge or refund status value. |
| `type` | [`TransactionHistoryType`](../../doc/models/transaction-history-type.md) | Query, Optional | Filter by row type. |
| `search` | `String` | Query, Optional | Free-text search across cardholder/customer name and email. Wrap a value in quotes (`"first last"`) for an exact-phrase match; an unquoted value matches partially. |
| `email` | `String` | Query, Optional | Filter by email address. |
| `id` | `UUID \| String` | Query, Optional | Filter by exact charge or refund ID. |
| `metadata` | `String` | Query, Optional | Filter by metadata. |
| `card_exp` | `String` | Query, Optional | Filter by card expiration, in `yyyy-MM` format. |
| `card_last_four` | `String` | Query, Optional | Filter by the last 4 digits of the card. Must be exactly 4 characters. |
| `cardholder` | `String` | Query, Optional | Filter by cardholder name. Partial match by default; wrap in quotes for an exact-phrase match. |
| `card_brand` | `Array[String]` | Query, Optional | Deprecated legacy alias of `brand`; use `brand` instead. Repeatable via the `[]` suffix (e.g. `card_brand[]=visa&card_brand[]=jcb`). Raw brand identifiers vary by payment type — see the `user_data.brand` field on this endpoint's response. |
| `brand` | `Array[String]` | Query, Optional | Filter by brand. Repeatable via the `[]` suffix (e.g. `brand[]=visa&brand[]=jcb`). Raw brand identifiers vary by payment type — see the `user_data.brand` field on this endpoint's response. |
| `brands` | `Array[String]` | Query, Optional | Deprecated legacy alias of `brand`; use `brand` instead. Repeatable via the `[]` suffix (e.g. `brands[]=visa&brands[]=jcb`). Raw brand identifiers vary by payment type — see the `user_data.brand` field on this endpoint's response. |
| `currency` | `String` | Query, Optional | Filter by currency (ISO-4217). |
| `service_provider` | [`TransactionHistoryServiceProvider`](../../doc/models/transaction-history-service-provider.md) | Query, Optional | Filter by service provider. |
| `service_providers` | [`Array[TransactionHistoryServiceProvider]`](../../doc/models/transaction-history-service-provider.md) | Query, Optional | Filter by service provider. Repeatable via the `[]` suffix (e.g. `service_providers[]=credit&service_providers[]=paidy`). Must not be empty; duplicate values are deduplicated. |
| `gateway_transaction_id` | `String` | Query, Optional | Filter by the gateway's own transaction ID (free text). |
| `bank_transfer_payment_statuses` | [`Array[BankTransferPaymentStatus]`](../../doc/models/bank-transfer-payment-status.md) | Query, Optional | Filter bank transfer rows by payment status. Repeatable via the `[]` suffix (e.g. `bank_transfer_payment_statuses[]=unpaid&bank_transfer_payment_statuses[]=exact`). |
| `bank_transfer_latest_deposit_date_from` | `String` | Query, Optional | Start of the range (inclusive) for `bank_transfer_latest_deposit_date`. Accepts epoch-millis or an ISO-8601 date-time. |
| `bank_transfer_latest_deposit_date_to` | `String` | Query, Optional | End of the range (inclusive) for `bank_transfer_latest_deposit_date`. Accepts epoch-millis or an ISO-8601 date-time. |
| `limit` | `Integer` | Query, Optional | Maximum number of resources to return in one page.<br><br>**Default**: `10`<br><br>**Constraints**: `<= 100` |
| `cursor` | `UUID \| String` | Query, Optional | Cursor pointing to the resource after which pagination should continue. |
| `cursor_direction` | [`CursorDirectionQuery`](../../doc/models/cursor-direction-query.md) | Query, Optional | Pagination direction relative to the supplied cursor.<br><br>**Default**: `CursorDirectionQuery::DESC` |

## Response Type

**200**: Paginated transaction history.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`TransactionHistoryList`](../../doc/models/transaction-history-list.md).

## Example Usage

```ruby
mode = TransactionHistoryMode::TEST

short_id = '8bfc29'

from = '04/01/2026 00:00:00'

to = '04/30/2026 23:59:59'

status = TransactionHistoryStatus::SUCCESSFUL

type = TransactionHistoryType::CHARGE

search = 'Taro Yamada'

email = 'user@example.com'

id = '11ef0000-0000-4000-8000-000000000070'

metadata = 'order_id: 12345'

card_exp = '2026-04'

card_last_four = '4242'

cardholder = 'TARO YAMADA'

card_brand = Liquid error: Value cannot be null. (Parameter 'key')

brand = Liquid error: Value cannot be null. (Parameter 'key')

brands = Liquid error: Value cannot be null. (Parameter 'key')

currency = 'JPY'

service_provider = TransactionHistoryServiceProvider::CREDIT

service_providers = Liquid error: Value cannot be null. (Parameter 'key')

gateway_transaction_id = 'gw-txn-00123456'

bank_transfer_payment_statuses = Liquid error: Value cannot be null. (Parameter 'key')

bank_transfer_latest_deposit_date_from = '04/01/2026 00:00:00'

bank_transfer_latest_deposit_date_to = '04/30/2026 23:59:59'

limit = 10

cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'

cursor_direction = CursorDirectionQuery::ASC

result = transaction_history_api.list_transaction_history(
  mode: mode,
  short_id: short_id,
  from: from,
  to: to,
  status: status,
  type: type,
  search: search,
  email: email,
  id: id,
  metadata: metadata,
  card_exp: card_exp,
  card_last_four: card_last_four,
  cardholder: cardholder,
  card_brand: card_brand,
  brand: brand,
  brands: brands,
  currency: currency,
  service_provider: service_provider,
  service_providers: service_providers,
  gateway_transaction_id: gateway_transaction_id,
  bank_transfer_payment_statuses: bank_transfer_payment_statuses,
  bank_transfer_latest_deposit_date_from: bank_transfer_latest_deposit_date_from,
  bank_transfer_latest_deposit_date_to: bank_transfer_latest_deposit_date_to,
  limit: limit,
  cursor: cursor,
  cursor_direction: cursor_direction
)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Example Response *(as JSON)*

```json
{
  "items": [
    {
      "store_id": "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
      "resource_id": "11ef0000-0000-4000-8000-000000000070",
      "charge_id": null,
      "amount": 1000,
      "currency": "JPY",
      "amount_formatted": 1000,
      "type": "charge",
      "status": "successful",
      "metadata": {},
      "created_on": "2024-05-01T12:34:56.789Z",
      "mode": "test",
      "merchant_name": "Test merchant",
      "store_name": "Test store",
      "payment_type": "card",
      "user_data": {
        "type": "charge",
        "cardholder_name": "Some Guy",
        "cardholder_email_address": "test4@univapay.com",
        "brand": "visa",
        "gateway": "test",
        "service_provider": "credit",
        "refunds": [
          {
            "refund_id": "11ef0000-0000-4000-8000-000000000010",
            "amount": 500,
            "currency": "JPY",
            "amount_formatted": 500,
            "status": "successful"
          }
        ]
      },
      "bank_transfer_payment_status": null,
      "bank_transfer_latest_deposit_date": null,
      "mcp_token_id": null,
      "charge_type": "normal"
    },
    {
      "store_id": "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
      "resource_id": "11ef0000-0000-4000-8000-000000000010",
      "charge_id": "11ef0000-0000-4000-8000-000000000070",
      "amount": 500,
      "currency": "JPY",
      "amount_formatted": 500,
      "type": "refund",
      "status": "successful",
      "metadata": {},
      "created_on": "2024-05-01T13:00:00.000000Z",
      "mode": "test",
      "merchant_name": "Test merchant",
      "store_name": "Test store",
      "payment_type": "card",
      "user_data": {
        "type": "refund",
        "reason": "customer_request"
      },
      "bank_transfer_payment_status": null,
      "bank_transfer_latest_deposit_date": null,
      "mcp_token_id": null,
      "charge_type": null
    }
  ],
  "has_more": false,
  "total_hits": 2
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# List Store Transaction History

Returns a paginated, searchable history of charges and refunds for a single store, combining both resource types into a single unified row shape.

```ruby
def list_store_transaction_history(store_id,
                                   mode: nil,
                                   short_id: nil,
                                   from: nil,
                                   to: nil,
                                   status: nil,
                                   type: nil,
                                   search: nil,
                                   email: nil,
                                   id: nil,
                                   metadata: nil,
                                   card_exp: nil,
                                   card_last_four: nil,
                                   cardholder: nil,
                                   card_brand: nil,
                                   brand: nil,
                                   brands: nil,
                                   currency: nil,
                                   service_provider: nil,
                                   service_providers: nil,
                                   gateway_transaction_id: nil,
                                   bank_transfer_payment_statuses: nil,
                                   bank_transfer_latest_deposit_date_from: nil,
                                   bank_transfer_latest_deposit_date_to: nil,
                                   limit: 10,
                                   cursor: nil,
                                   cursor_direction: CursorDirectionQuery::DESC)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Template, Required | The unique identifier of the store. |
| `mode` | [`TransactionHistoryMode`](../../doc/models/transaction-history-mode.md) | Query, Optional | Filter by environment mode. |
| `short_id` | `String` | Query, Optional | Filter by the last 6 characters of a resource's UUID. Must be exactly 6 characters. |
| `from` | `String` | Query, Optional | Show rows created on or after this date. Accepts epoch-millis or an ISO-8601 date-time. Must not be later than `to`. |
| `to` | `String` | Query, Optional | Show rows created on or before this date. Accepts epoch-millis or an ISO-8601 date-time. Must not be earlier than `from`. |
| `status` | [`TransactionHistoryStatus`](../../doc/models/transaction-history-status.md) | Query, Optional | Filter by status. Accepts any charge or refund status value. |
| `type` | [`TransactionHistoryType`](../../doc/models/transaction-history-type.md) | Query, Optional | Filter by row type. |
| `search` | `String` | Query, Optional | Free-text search across cardholder/customer name and email. Wrap a value in quotes (`"first last"`) for an exact-phrase match; an unquoted value matches partially. |
| `email` | `String` | Query, Optional | Filter by email address. |
| `id` | `UUID \| String` | Query, Optional | Filter by exact charge or refund ID. |
| `metadata` | `String` | Query, Optional | Filter by metadata. |
| `card_exp` | `String` | Query, Optional | Filter by card expiration, in `yyyy-MM` format. |
| `card_last_four` | `String` | Query, Optional | Filter by the last 4 digits of the card. Must be exactly 4 characters. |
| `cardholder` | `String` | Query, Optional | Filter by cardholder name. Partial match by default; wrap in quotes for an exact-phrase match. |
| `card_brand` | `Array[String]` | Query, Optional | Deprecated legacy alias of `brand`; use `brand` instead. Repeatable via the `[]` suffix (e.g. `card_brand[]=visa&card_brand[]=jcb`). Raw brand identifiers vary by payment type — see the `user_data.brand` field on this endpoint's response. |
| `brand` | `Array[String]` | Query, Optional | Filter by brand. Repeatable via the `[]` suffix (e.g. `brand[]=visa&brand[]=jcb`). Raw brand identifiers vary by payment type — see the `user_data.brand` field on this endpoint's response. |
| `brands` | `Array[String]` | Query, Optional | Deprecated legacy alias of `brand`; use `brand` instead. Repeatable via the `[]` suffix (e.g. `brands[]=visa&brands[]=jcb`). Raw brand identifiers vary by payment type — see the `user_data.brand` field on this endpoint's response. |
| `currency` | `String` | Query, Optional | Filter by currency (ISO-4217). |
| `service_provider` | [`TransactionHistoryServiceProvider`](../../doc/models/transaction-history-service-provider.md) | Query, Optional | Filter by service provider. |
| `service_providers` | [`Array[TransactionHistoryServiceProvider]`](../../doc/models/transaction-history-service-provider.md) | Query, Optional | Filter by service provider. Repeatable via the `[]` suffix (e.g. `service_providers[]=credit&service_providers[]=paidy`). Must not be empty; duplicate values are deduplicated. |
| `gateway_transaction_id` | `String` | Query, Optional | Filter by the gateway's own transaction ID (free text). |
| `bank_transfer_payment_statuses` | [`Array[BankTransferPaymentStatus]`](../../doc/models/bank-transfer-payment-status.md) | Query, Optional | Filter bank transfer rows by payment status. Repeatable via the `[]` suffix (e.g. `bank_transfer_payment_statuses[]=unpaid&bank_transfer_payment_statuses[]=exact`). |
| `bank_transfer_latest_deposit_date_from` | `String` | Query, Optional | Start of the range (inclusive) for `bank_transfer_latest_deposit_date`. Accepts epoch-millis or an ISO-8601 date-time. |
| `bank_transfer_latest_deposit_date_to` | `String` | Query, Optional | End of the range (inclusive) for `bank_transfer_latest_deposit_date`. Accepts epoch-millis or an ISO-8601 date-time. |
| `limit` | `Integer` | Query, Optional | Maximum number of resources to return in one page.<br><br>**Default**: `10`<br><br>**Constraints**: `<= 100` |
| `cursor` | `UUID \| String` | Query, Optional | Cursor pointing to the resource after which pagination should continue. |
| `cursor_direction` | [`CursorDirectionQuery`](../../doc/models/cursor-direction-query.md) | Query, Optional | Pagination direction relative to the supplied cursor.<br><br>**Default**: `CursorDirectionQuery::DESC` |

## Response Type

**200**: Paginated transaction history for the store.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`TransactionHistoryList`](../../doc/models/transaction-history-list.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

mode = TransactionHistoryMode::TEST

short_id = '8bfc29'

from = '04/01/2026 00:00:00'

to = '04/30/2026 23:59:59'

status = TransactionHistoryStatus::SUCCESSFUL

type = TransactionHistoryType::CHARGE

search = 'Taro Yamada'

email = 'user@example.com'

id = '11ef0000-0000-4000-8000-000000000070'

metadata = 'order_id: 12345'

card_exp = '2026-04'

card_last_four = '4242'

cardholder = 'TARO YAMADA'

card_brand = Liquid error: Value cannot be null. (Parameter 'key')

brand = Liquid error: Value cannot be null. (Parameter 'key')

brands = Liquid error: Value cannot be null. (Parameter 'key')

currency = 'JPY'

service_provider = TransactionHistoryServiceProvider::CREDIT

service_providers = Liquid error: Value cannot be null. (Parameter 'key')

gateway_transaction_id = 'gw-txn-00123456'

bank_transfer_payment_statuses = Liquid error: Value cannot be null. (Parameter 'key')

bank_transfer_latest_deposit_date_from = '04/01/2026 00:00:00'

bank_transfer_latest_deposit_date_to = '04/30/2026 23:59:59'

limit = 10

cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'

cursor_direction = CursorDirectionQuery::ASC

result = transaction_history_api.list_store_transaction_history(
  store_id,
  mode: mode,
  short_id: short_id,
  from: from,
  to: to,
  status: status,
  type: type,
  search: search,
  email: email,
  id: id,
  metadata: metadata,
  card_exp: card_exp,
  card_last_four: card_last_four,
  cardholder: cardholder,
  card_brand: card_brand,
  brand: brand,
  brands: brands,
  currency: currency,
  service_provider: service_provider,
  service_providers: service_providers,
  gateway_transaction_id: gateway_transaction_id,
  bank_transfer_payment_statuses: bank_transfer_payment_statuses,
  bank_transfer_latest_deposit_date_from: bank_transfer_latest_deposit_date_from,
  bank_transfer_latest_deposit_date_to: bank_transfer_latest_deposit_date_to,
  limit: limit,
  cursor: cursor,
  cursor_direction: cursor_direction
)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Example Response *(as JSON)*

```json
{
  "items": [
    {
      "store_id": "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
      "resource_id": "11ef0000-0000-4000-8000-000000000072",
      "charge_id": null,
      "amount": 2500,
      "currency": "JPY",
      "amount_formatted": 2500,
      "type": "charge",
      "status": "awaiting",
      "metadata": {},
      "created_on": "2024-05-03T10:00:00.000000Z",
      "mode": "live",
      "merchant_name": "Test merchant",
      "store_name": "Test store",
      "payment_type": "bank_transfer",
      "user_data": {
        "type": "charge",
        "cardholder_email_address": "test_bank_transfer@test.com",
        "brand": "aozora_bank",
        "gateway": "aozora_bank",
        "service_provider": "bank_transfer",
        "refunds": []
      },
      "bank_transfer_payment_status": "unpaid",
      "bank_transfer_latest_deposit_date": null,
      "mcp_token_id": null,
      "charge_type": "normal"
    }
  ],
  "has_more": false,
  "total_hits": 1
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |

