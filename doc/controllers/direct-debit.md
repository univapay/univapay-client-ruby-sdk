# Direct Debit

```ruby
direct_debit_api = client.direct_debit
```

## Class Name

`DirectDebitApi`

## Methods

* [Get Direct Debit Configuration](../../doc/controllers/direct-debit.md#get-direct-debit-configuration)
* [Get Direct Debit Notification Configuration](../../doc/controllers/direct-debit.md#get-direct-debit-notification-configuration)
* [Get Direct Debit Current Schedule](../../doc/controllers/direct-debit.md#get-direct-debit-current-schedule)
* [List Direct Debit Bank Accounts](../../doc/controllers/direct-debit.md#list-direct-debit-bank-accounts)
* [Create Direct Debit Bank Account](../../doc/controllers/direct-debit.md#create-direct-debit-bank-account)
* [Get Direct Debit Bank Account](../../doc/controllers/direct-debit.md#get-direct-debit-bank-account)
* [Update Direct Debit Bank Account](../../doc/controllers/direct-debit.md#update-direct-debit-bank-account)
* [Deactivate Direct Debit Bank Account](../../doc/controllers/direct-debit.md#deactivate-direct-debit-bank-account)
* [Reenable Direct Debit Bank Account](../../doc/controllers/direct-debit.md#reenable-direct-debit-bank-account)
* [Create Direct Debit Bank Transfer](../../doc/controllers/direct-debit.md#create-direct-debit-bank-transfer)
* [List Direct Debit Bank Transfers](../../doc/controllers/direct-debit.md#list-direct-debit-bank-transfers)
* [Get Direct Debit Bank Transfer](../../doc/controllers/direct-debit.md#get-direct-debit-bank-transfer)
* [Update Direct Debit Bank Transfer](../../doc/controllers/direct-debit.md#update-direct-debit-bank-transfer)
* [Delete Direct Debit Bank Transfer](../../doc/controllers/direct-debit.md#delete-direct-debit-bank-transfer)


# Get Direct Debit Configuration

Retrieves the merchant's direct debit configuration — whether direct debit is enabled and which monthly debit cycle applies.

```ruby
def get_direct_debit_configuration(merchant_id)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: Direct Debit Configuration

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitMerchantConfiguration`](../../doc/models/direct-debit-merchant-configuration.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

result = direct_debit_api.get_direct_debit_configuration(merchant_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Example Response *(as JSON)*

```json
{
  "legacy_id": "1283794",
  "enabled": true,
  "debit_date": "fourteen",
  "consignor_code": "135456",
  "classifier": "99",
  "signature": "モモサン"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Get Direct Debit Notification Configuration

Retrieves which direct debit email notifications the merchant has opted into.

```ruby
def get_direct_debit_notification_configuration(merchant_id)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: Notification Configuration

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitNotificationConfiguration`](../../doc/models/direct-debit-notification-configuration.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

result = direct_debit_api.get_direct_debit_notification_configuration(merchant_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Example Response *(as JSON)*

```json
{
  "notify_deadline_mailing": true,
  "notify_deadline_debit": true,
  "notify_debit_update": false
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Get Direct Debit Current Schedule

Retrieves the key dates for the debit cycle currently in progress, based on the merchant's configured cycle. Compare `merchant_bank_transfer_upload_deadline` against today to decide whether transfers can still be registered or edited this month.

```ruby
def get_direct_debit_current_schedule(merchant_id)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: Current Debit Cycle

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitSchedule`](../../doc/models/direct-debit-schedule.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

result = direct_debit_api.get_direct_debit_current_schedule(merchant_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Example Response *(as JSON)*

```json
{
  "merchant_bank_account_transfer_date": "2026-03-14",
  "merchant_bank_account_registration_deadline": "2026-02-20",
  "merchant_bank_transfer_upload_deadline": "2026-03-04",
  "platform_result_registration_date": "2026-03-24",
  "platform_scheduled_payout": "2026-03-31"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# List Direct Debit Bank Accounts

Lists the consumer bank accounts registered for direct debit under this merchant.

```ruby
def list_direct_debit_bank_accounts(merchant_id,
                                    limit: 10,
                                    cursor: nil,
                                    cursor_direction: CursorDirectionQuery::DESC,
                                    user_number: nil,
                                    bank_account_id: nil,
                                    bank_code: nil,
                                    bank_name: nil,
                                    branch_code: nil,
                                    bank_account_type: nil,
                                    bank_account_number: nil,
                                    bank_account_name: nil,
                                    registration_origin: nil,
                                    bank_account_status: nil,
                                    from: nil,
                                    to: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |
| `limit` | `Integer` | Query, Optional | Maximum number of resources to return in one page.<br><br>**Default**: `10`<br><br>**Constraints**: `<= 100` |
| `cursor` | `String` | Query, Optional | Cursor pointing to the resource after which pagination should continue.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |
| `cursor_direction` | [`CursorDirectionQuery`](../../doc/models/cursor-direction-query.md) | Query, Optional | Pagination direction relative to the supplied cursor.<br><br>**Default**: `CursorDirectionQuery::DESC` |
| `user_number` | `String` | Query, Optional | Filter by the merchant's own membership number for the consumer (会員番号).<br><br>**Constraints**: *Pattern*: `^[a-zA-Z0-9]+$` |
| `bank_account_id` | `String` | Query, Optional | Filter by a single bank account ID.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |
| `bank_code` | `String` | Query, Optional | Filter by the 4-digit bank code (銀行コード).<br><br>**Constraints**: *Minimum Length*: `4`, *Maximum Length*: `4`, *Pattern*: `^[0-9]{4}$` |
| `bank_name` | `String` | Query, Optional | Filter by bank name in half-width katakana (銀行名).<br><br>**Constraints**: *Maximum Length*: `15` |
| `branch_code` | `String` | Query, Optional | Filter by the 3-digit branch code (支店コード).<br><br>**Constraints**: *Minimum Length*: `3`, *Maximum Length*: `3`, *Pattern*: `^[0-9]{3}$` |
| `bank_account_type` | [`DirectDebitBankAccountType`](../../doc/models/direct-debit-bank-account-type.md) | Query, Optional | Filter by deposit account type (預金種類). |
| `bank_account_number` | `String` | Query, Optional | Filter by the 7-digit account number (口座番号).<br><br>**Constraints**: *Minimum Length*: `7`, *Maximum Length*: `7`, *Pattern*: `^[0-9]{7}$` |
| `bank_account_name` | `String` | Query, Optional | Filter by account holder name in half-width katakana (口座名義).<br><br>**Constraints**: *Maximum Length*: `30`, *Pattern*: `^[A-Z0-9ｱ-ﾝﾞﾟ().\- ]{1,30}$` |
| `registration_origin` | [`DirectDebitRegistrationOrigin`](../../doc/models/direct-debit-registration-origin.md) | Query, Optional | Filter by where the bank account was registered from. |
| `bank_account_status` | [`DirectDebitBankAccountStatus`](../../doc/models/direct-debit-bank-account-status.md) | Query, Optional | Filter by bank account status. Omit to return every status. |
| `from` | `String` | Query, Optional | Show bank accounts created on or after this date (ISO-8601). |
| `to` | `String` | Query, Optional | Show bank accounts created before this date (ISO-8601). |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: List of Bank Accounts

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitBankAccountList`](../../doc/models/direct-debit-bank-account-list.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

limit = 10

cursor = '1098116'

cursor_direction = CursorDirectionQuery::ASC

user_number = 'SD02688328'

bank_account_id = '1098116'

bank_code = '0012'

bank_name = 'ﾗｸﾃﾝｷﾞﾝｺｳ'

branch_code = '120'

bank_account_type = DirectDebitBankAccountType::REGULAR

bank_account_number = '1234567'

bank_account_name = 'ﾀﾅｶﾕﾐｺ'

registration_origin = DirectDebitRegistrationOrigin::MERCHANT_CONSOLE

bank_account_status = DirectDebitBankAccountStatus::ACTIVE

from = '04/01/2026 00:00:00'

to = '04/30/2026 23:59:59'

result = direct_debit_api.list_direct_debit_bank_accounts(
  merchant_id,
  limit: limit,
  cursor: cursor,
  cursor_direction: cursor_direction,
  user_number: user_number,
  bank_account_id: bank_account_id,
  bank_code: bank_code,
  bank_name: bank_name,
  branch_code: branch_code,
  bank_account_type: bank_account_type,
  bank_account_number: bank_account_number,
  bank_account_name: bank_account_name,
  registration_origin: registration_origin,
  bank_account_status: bank_account_status,
  from: from,
  to: to
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
      "id": "1098116",
      "legacy_store_id": "1283794",
      "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
      "user_number": "SD02688328",
      "bank_code": "0012",
      "bank_name": "ﾗｸﾃﾝｷﾞﾝｺｳ",
      "branch_code": "120",
      "bank_account_type": "regular",
      "bank_account_name": "ﾀﾅｶﾕﾐｺ",
      "bank_account_number": "1234567",
      "registration_origin": "merchant_console",
      "status": "active",
      "created_on": "2026-04-09T07:35:50.000Z",
      "updated_on": "2026-04-09T07:35:50.000Z"
    },
    {
      "id": "1098117",
      "legacy_store_id": "1283794",
      "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
      "user_number": "SD02688329",
      "bank_code": "0009",
      "bank_name": "ﾐﾂｲｽﾐﾄﾓ",
      "branch_code": "221",
      "bank_account_type": "current",
      "bank_account_name": "ｽｽﾞｷﾀﾛｳ",
      "bank_account_number": "7654321",
      "registration_origin": "anywhere",
      "status": "inactive",
      "created_on": "2026-04-10T09:12:04.000Z",
      "updated_on": "2026-04-12T11:03:41.000Z"
    }
  ],
  "has_more": false
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Create Direct Debit Bank Account

Registers a consumer bank account for direct debit. The account is created and then verified against the bank, so it starts out unusable — poll its `status` until it becomes `active` (or `registration_failed`) before scheduling transfers against it.

```ruby
def create_direct_debit_bank_account(merchant_id,
                                     body,
                                     idempotency_key: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |
| `body` | [`DirectDebitBankAccountCreateRequest`](../../doc/models/direct-debit-bank-account-create-request.md) | Body, Required | Request payload for registering a consumer bank account. |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: Bank Account Registered

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitBankAccount`](../../doc/models/direct-debit-bank-account.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

body = DirectDebitBankAccountCreateRequest.new(
  user_number: 'SD02688328',
  bank_code: '0012',
  bank_name: 'ﾗｸﾃﾝｷﾞﾝｺｳ',
  branch_code: '120',
  bank_account_type: DirectDebitBankAccountType::REGULAR,
  bank_account_name: 'ﾀﾅｶﾕﾐｺ',
  bank_account_number: '1234567'
)

result = direct_debit_api.create_direct_debit_bank_account(
  merchant_id,
  body
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
  "id": "1098116",
  "legacy_store_id": "1283794",
  "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
  "user_number": "SD02688328",
  "bank_code": "0012",
  "bank_name": "ﾗｸﾃﾝｷﾞﾝｺｳ",
  "branch_code": "120",
  "bank_account_type": "regular",
  "bank_account_name": "ﾀﾅｶﾕﾐｺ",
  "bank_account_number": "1234567",
  "registration_origin": "merchant_console",
  "status": "active",
  "created_on": "2026-04-09T07:35:50.000Z",
  "updated_on": "2026-04-09T07:35:50.000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). One or more bank account fields failed validation. Common reasons: REQUIRED_VALUE, INVALID_FORMAT, NOT_ALLOWED_VALUE. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Get Direct Debit Bank Account

Retrieves a single registered bank account, including its current verification status.

```ruby
def get_direct_debit_bank_account(merchant_id,
                                  bank_account_id)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |
| `bank_account_id` | `String` | Template, Required | The unique identifier of the direct debit bank account.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: Bank Account

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitBankAccount`](../../doc/models/direct-debit-bank-account.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

bank_account_id = '1098116'

result = direct_debit_api.get_direct_debit_bank_account(
  merchant_id,
  bank_account_id
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
  "id": "1098116",
  "legacy_store_id": "1283794",
  "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
  "user_number": "SD02688328",
  "bank_code": "0012",
  "bank_name": "ﾗｸﾃﾝｷﾞﾝｺｳ",
  "branch_code": "120",
  "bank_account_type": "regular",
  "bank_account_name": "ﾀﾅｶﾕﾐｺ",
  "bank_account_number": "1234567",
  "registration_origin": "merchant_console",
  "status": "active",
  "created_on": "2026-04-09T07:35:50.000Z",
  "updated_on": "2026-04-09T07:35:50.000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Update Direct Debit Bank Account

Updates a registered bank account. Changing bank details re-triggers verification with the bank. Transfers already registered keep the details they were created with.

```ruby
def update_direct_debit_bank_account(merchant_id,
                                     bank_account_id,
                                     body,
                                     idempotency_key: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |
| `bank_account_id` | `String` | Template, Required | The unique identifier of the direct debit bank account.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |
| `body` | [`DirectDebitBankAccountUpdateRequest`](../../doc/models/direct-debit-bank-account-update-request.md) | Body, Required | Request payload for updating a registered bank account. |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: Bank Account Updated

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitBankAccount`](../../doc/models/direct-debit-bank-account.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

bank_account_id = '1098116'

body = DirectDebitBankAccountUpdateRequest.new(
  bank_account_name: 'ﾀﾅｶﾕﾐｺ'
)

result = direct_debit_api.update_direct_debit_bank_account(
  merchant_id,
  bank_account_id,
  body
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
  "id": "1098116",
  "legacy_store_id": "1283794",
  "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
  "user_number": "SD02688328",
  "bank_code": "0012",
  "bank_name": "ﾗｸﾃﾝｷﾞﾝｺｳ",
  "branch_code": "120",
  "bank_account_type": "regular",
  "bank_account_name": "ﾀﾅｶﾕﾐｺ",
  "bank_account_number": "1234567",
  "registration_origin": "merchant_console",
  "status": "active",
  "created_on": "2026-04-09T07:35:50.000Z",
  "updated_on": "2026-04-09T07:35:50.000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). One or more bank account fields failed validation. Common reasons: INVALID_FORMAT, NOT_ALLOWED_VALUE. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Deactivate Direct Debit Bank Account

Deactivates a bank account so no further transfers can be registered against it. The record is retained (status becomes `inactive`) rather than deleted, and can be re-enabled later.

```ruby
def deactivate_direct_debit_bank_account(merchant_id,
                                         bank_account_id)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |
| `bank_account_id` | `String` | Template, Required | The unique identifier of the direct debit bank account.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: Bank Account Deactivated

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitBankAccount`](../../doc/models/direct-debit-bank-account.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

bank_account_id = '1098116'

result = direct_debit_api.deactivate_direct_debit_bank_account(
  merchant_id,
  bank_account_id
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
  "id": "1098116",
  "legacy_store_id": "1283794",
  "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
  "user_number": "SD02688328",
  "bank_code": "0012",
  "bank_name": "ﾗｸﾃﾝｷﾞﾝｺｳ",
  "branch_code": "120",
  "bank_account_type": "regular",
  "bank_account_name": "ﾀﾅｶﾕﾐｺ",
  "bank_account_number": "1234567",
  "registration_origin": "merchant_console",
  "status": "inactive",
  "created_on": "2026-04-09T07:35:50.000Z",
  "updated_on": "2026-04-14T02:11:07.000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Reenable Direct Debit Bank Account

Returns a deactivated bank account to `active` so transfers can be registered against it again. The account must currently be `inactive`.

```ruby
def reenable_direct_debit_bank_account(merchant_id,
                                       bank_account_id,
                                       idempotency_key: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |
| `bank_account_id` | `String` | Template, Required | The unique identifier of the direct debit bank account.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: Bank Account Re-enabled

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitBankAccount`](../../doc/models/direct-debit-bank-account.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

bank_account_id = '1098116'

idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

result = direct_debit_api.reenable_direct_debit_bank_account(
  merchant_id,
  bank_account_id,
  idempotency_key: idempotency_key
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
  "id": "1098116",
  "legacy_store_id": "1283794",
  "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
  "user_number": "SD02688328",
  "bank_code": "0012",
  "bank_name": "ﾗｸﾃﾝｷﾞﾝｺｳ",
  "branch_code": "120",
  "bank_account_type": "regular",
  "bank_account_name": "ﾀﾅｶﾕﾐｺ",
  "bank_account_number": "1234567",
  "registration_origin": "merchant_console",
  "status": "active",
  "created_on": "2026-04-09T07:35:50.000Z",
  "updated_on": "2026-04-09T07:35:50.000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The bank account is not inactive. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Create Direct Debit Bank Transfer

Schedules a pull of funds from an active bank account. The transfer is queued for the merchant's next debit cycle and stays editable until that cycle's upload deadline passes.

```ruby
def create_direct_debit_bank_transfer(merchant_id,
                                      bank_account_id,
                                      body,
                                      idempotency_key: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |
| `bank_account_id` | `String` | Template, Required | The unique identifier of the direct debit bank account.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |
| `body` | [`DirectDebitBankTransferCreateRequest`](../../doc/models/direct-debit-bank-transfer-create-request.md) | Body, Required | Request payload for scheduling a transfer, in JPY. |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: Bank Transfer Scheduled

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitBankTransfer`](../../doc/models/direct-debit-bank-transfer.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

bank_account_id = '1098116'

body = DirectDebitBankTransferCreateRequest.new(
  amount: 1000
)

result = direct_debit_api.create_direct_debit_bank_transfer(
  merchant_id,
  bank_account_id,
  body
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
  "id": "2594976",
  "legacy_store_id": "1283794",
  "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
  "bank_account_id": "1098116",
  "user_number": "SD02688328",
  "bank_code": "0012",
  "bank_name": "ﾗｸﾃﾝｷﾞﾝｺｳ",
  "branch_code": "120",
  "bank_account_type": "regular",
  "bank_account_name": "ﾀﾅｶﾕﾐｺ",
  "bank_account_number": "1234567",
  "amount": 1000,
  "debit_date": "fourteen",
  "calculated_debit_date": "2026-03-14",
  "lock": "unlocked",
  "status": "awaiting",
  "error": null,
  "created_on": "2026-04-09T07:35:50.000Z",
  "updated_on": "2026-04-09T07:35:50.000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The bank account is not active, or the amount is invalid. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# List Direct Debit Bank Transfers

Lists the direct debit transfers registered under this merchant, across all bank accounts.

```ruby
def list_direct_debit_bank_transfers(merchant_id,
                                     limit: 10,
                                     cursor: nil,
                                     cursor_direction: CursorDirectionQuery::DESC,
                                     bank_transfer_id: nil,
                                     bank_transfer_start: nil,
                                     bank_transfer_end: nil,
                                     debit_date: nil,
                                     user_number: nil,
                                     bank_account_number: nil,
                                     bank_account_name: nil,
                                     lock_status: nil,
                                     bank_transfer_status: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |
| `limit` | `Integer` | Query, Optional | Maximum number of resources to return in one page.<br><br>**Default**: `10`<br><br>**Constraints**: `<= 100` |
| `cursor` | `String` | Query, Optional | Cursor pointing to the resource after which pagination should continue.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |
| `cursor_direction` | [`CursorDirectionQuery`](../../doc/models/cursor-direction-query.md) | Query, Optional | Pagination direction relative to the supplied cursor.<br><br>**Default**: `CursorDirectionQuery::DESC` |
| `bank_transfer_id` | `String` | Query, Optional | Filter by a single bank transfer ID.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |
| `bank_transfer_start` | `String` | Query, Optional | Start of the year-month range in which the transfer is scheduled to occur.<br><br>**Constraints**: *Pattern*: `^[0-9]{4}-[0-9]{2}$` |
| `bank_transfer_end` | `String` | Query, Optional | End of the year-month range in which the transfer is scheduled to occur.<br><br>**Constraints**: *Pattern*: `^[0-9]{4}-[0-9]{2}$` |
| `debit_date` | [`DirectDebitDebitDate`](../../doc/models/direct-debit-debit-date.md) | Query, Optional | Filter by monthly debit cycle. |
| `user_number` | `String` | Query, Optional | Filter by the merchant's own membership number for the consumer (会員番号).<br><br>**Constraints**: *Pattern*: `^[a-zA-Z0-9]+$` |
| `bank_account_number` | `String` | Query, Optional | Filter by the 7-digit account number (口座番号).<br><br>**Constraints**: *Minimum Length*: `7`, *Maximum Length*: `7`, *Pattern*: `^[0-9]{7}$` |
| `bank_account_name` | `String` | Query, Optional | Filter by account holder name in half-width katakana (口座名義).<br><br>**Constraints**: *Maximum Length*: `30`, *Pattern*: `^[A-Z0-9ｱ-ﾝﾞﾟ().\- ]{1,30}$` |
| `lock_status` | [`DirectDebitBankTransferLock`](../../doc/models/direct-debit-bank-transfer-lock.md) | Query, Optional | Filter by lock status. Omit to return both locked and unlocked transfers. |
| `bank_transfer_status` | [`DirectDebitBankTransferStatus`](../../doc/models/direct-debit-bank-transfer-status.md) | Query, Optional | Filter by transfer status. Omit to return every status. |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: List of Bank Transfers

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitBankTransferList`](../../doc/models/direct-debit-bank-transfer-list.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

limit = 10

cursor = '1098116'

cursor_direction = CursorDirectionQuery::ASC

bank_transfer_id = '2594976'

bank_transfer_start = '2026-01'

bank_transfer_end = '2026-03'

debit_date = DirectDebitDebitDate::FOURTEEN

user_number = 'SD02688328'

bank_account_number = '1234567'

bank_account_name = 'ﾀﾅｶﾕﾐｺ'

lock_status = DirectDebitBankTransferLock::UNLOCKED

bank_transfer_status = DirectDebitBankTransferStatus::AWAITING

result = direct_debit_api.list_direct_debit_bank_transfers(
  merchant_id,
  limit: limit,
  cursor: cursor,
  cursor_direction: cursor_direction,
  bank_transfer_id: bank_transfer_id,
  bank_transfer_start: bank_transfer_start,
  bank_transfer_end: bank_transfer_end,
  debit_date: debit_date,
  user_number: user_number,
  bank_account_number: bank_account_number,
  bank_account_name: bank_account_name,
  lock_status: lock_status,
  bank_transfer_status: bank_transfer_status
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
      "id": "2594976",
      "legacy_store_id": "1283794",
      "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
      "bank_account_id": "1098116",
      "user_number": "SD02688328",
      "bank_code": "0012",
      "bank_name": "ﾗｸﾃﾝｷﾞﾝｺｳ",
      "branch_code": "120",
      "bank_account_type": "regular",
      "bank_account_name": "ﾀﾅｶﾕﾐｺ",
      "bank_account_number": "1234567",
      "amount": 1000,
      "debit_date": "fourteen",
      "calculated_debit_date": "2026-03-14",
      "lock": "unlocked",
      "status": "awaiting",
      "error": null,
      "created_on": "2026-04-09T07:35:50.000Z",
      "updated_on": "2026-04-09T07:35:50.000Z"
    },
    {
      "id": "2594977",
      "legacy_store_id": "1283794",
      "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
      "bank_account_id": "1098117",
      "user_number": "SD02688329",
      "bank_code": "0009",
      "bank_name": "ﾐﾂｲｽﾐﾄﾓ",
      "branch_code": "221",
      "bank_account_type": "current",
      "bank_account_name": "ｽｽﾞｷﾀﾛｳ",
      "bank_account_number": "7654321",
      "amount": 1850,
      "debit_date": "twenty_seven",
      "calculated_debit_date": "2026-03-27",
      "lock": "locked",
      "status": "failed",
      "error": "insufficient_funds",
      "created_on": "2026-04-10T09:12:04.000Z",
      "updated_on": "2026-04-12T11:03:41.000Z"
    }
  ],
  "has_more": false
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Get Direct Debit Bank Transfer

Retrieves a single transfer. Poll this after the cycle's result registration date to pick up the outcome and, on failure, the bank's reason.

```ruby
def get_direct_debit_bank_transfer(merchant_id,
                                   bank_transfer_id)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |
| `bank_transfer_id` | `String` | Template, Required | The unique identifier of the direct debit bank transfer.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: Bank Transfer

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitBankTransfer`](../../doc/models/direct-debit-bank-transfer.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

bank_transfer_id = '2594976'

result = direct_debit_api.get_direct_debit_bank_transfer(
  merchant_id,
  bank_transfer_id
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
  "id": "2594976",
  "legacy_store_id": "1283794",
  "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
  "bank_account_id": "1098116",
  "user_number": "SD02688328",
  "bank_code": "0012",
  "bank_name": "ﾗｸﾃﾝｷﾞﾝｺｳ",
  "branch_code": "120",
  "bank_account_type": "regular",
  "bank_account_name": "ﾀﾅｶﾕﾐｺ",
  "bank_account_number": "1234567",
  "amount": 1000,
  "debit_date": "fourteen",
  "calculated_debit_date": "2026-03-14",
  "lock": "unlocked",
  "status": "awaiting",
  "error": null,
  "created_on": "2026-04-09T07:35:50.000Z",
  "updated_on": "2026-04-09T07:35:50.000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Update Direct Debit Bank Transfer

Changes a scheduled transfer's amount. Only permitted while the transfer is `unlocked` — once its cycle's upload deadline passes the amount is fixed.

```ruby
def update_direct_debit_bank_transfer(merchant_id,
                                      bank_transfer_id,
                                      body,
                                      idempotency_key: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |
| `bank_transfer_id` | `String` | Template, Required | The unique identifier of the direct debit bank transfer.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |
| `body` | [`DirectDebitBankTransferPatchRequest`](../../doc/models/direct-debit-bank-transfer-patch-request.md) | Body, Required | Request payload for changing the transfer amount. |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |

## Server

`Server::DIRECTDEBIT`

## Response Type

**200**: Bank Transfer Updated

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`DirectDebitBankTransfer`](../../doc/models/direct-debit-bank-transfer.md).

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

bank_transfer_id = '2594976'

body = DirectDebitBankTransferPatchRequest.new(
  amount: 1850
)

result = direct_debit_api.update_direct_debit_bank_transfer(
  merchant_id,
  bank_transfer_id,
  body
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
  "id": "2594976",
  "legacy_store_id": "1283794",
  "merchant_id": "01234567-89ab-cdef-0123-456789abcdef",
  "bank_account_id": "1098116",
  "user_number": "SD02688328",
  "bank_code": "0012",
  "bank_name": "ﾗｸﾃﾝｷﾞﾝｺｳ",
  "branch_code": "120",
  "bank_account_type": "regular",
  "bank_account_name": "ﾀﾅｶﾕﾐｺ",
  "bank_account_number": "1234567",
  "amount": 1000,
  "debit_date": "fourteen",
  "calculated_debit_date": "2026-03-14",
  "lock": "unlocked",
  "status": "awaiting",
  "error": null,
  "created_on": "2026-04-09T07:35:50.000Z",
  "updated_on": "2026-04-09T07:35:50.000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The transfer is locked, or the amount is invalid. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Delete Direct Debit Bank Transfer

Cancels a scheduled transfer so it is not sent to the bank. Only permitted while the transfer is `unlocked`.

```ruby
def delete_direct_debit_bank_transfer(merchant_id,
                                      bank_transfer_id)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `UUID \| String` | Template, Required | The unique identifier of the merchant. |
| `bank_transfer_id` | `String` | Template, Required | The unique identifier of the direct debit bank transfer.<br><br>**Constraints**: *Pattern*: `^[0-9]+$` |

## Server

`Server::DIRECTDEBIT`

## Response Type

**204**: Bank Transfer Deleted. Returns no content.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance.

## Example Usage

```ruby
merchant_id = '01234567-89ab-cdef-0123-456789abcdef'

bank_transfer_id = '2594976'

result = direct_debit_api.delete_direct_debit_bank_transfer(
  merchant_id,
  bank_transfer_id
)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The transfer is locked and can no longer be deleted. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |

