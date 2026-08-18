
# Transaction History Item

A single charge or refund row in the merchant's transaction history.

*This model accepts additional fields of type Object.*

## Structure

`TransactionHistoryItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Optional | Store identifier. |
| `resource_id` | `UUID \| String` | Optional | ID of the underlying resource — a charge ID for charge rows, a refund ID for refund rows. |
| `charge_id` | `UUID \| String` | Optional | ID of the originating charge. `null` for charge rows; set for refund rows. |
| `amount` | `Integer` | Optional | Amount, in the currency's minor unit. |
| `currency` | `String` | Optional | ISO-4217 currency code. |
| `amount_formatted` | `Float` | Optional | Amount, formatted per the currency's display scale. |
| `type` | [`TransactionHistoryType`](../../doc/models/transaction-history-type.md) | Optional | Whether this row represents a charge or a refund. |
| `status` | [`TransactionHistoryStatus`](../../doc/models/transaction-history-status.md) | Optional | Status of the underlying resource. Charge rows use the full set of values; refund rows only ever report `pending`, `successful`, `failed`, or `error`. |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `created_on` | `DateTime` | Optional | Timestamp when the underlying resource was created. |
| `mode` | [`TransactionHistoryMode`](../../doc/models/transaction-history-mode.md) | Optional | Environment mode: `live` and `test` reflect the credential used to authenticate, while `live_test` is reserved for privileged callers testing against live-mode data. |
| `merchant_name` | `String` | Optional | Merchant display name. |
| `store_name` | `String` | Optional | Store display name. |
| `payment_type` | [`TransactionHistoryPaymentType`](../../doc/models/transaction-history-payment-type.md) | Optional | The payment method used for the underlying charge. |
| `user_data` | [`TransactionHistoryUserData`](../../doc/models/transaction-history-user-data.md) | Optional | Payment-type-specific details for this row. This is a single flat object covering every payment type — the fields actually populated depend on `payment_type` (documented per field below). Fields not applicable to a given payment type are omitted. |
| `bank_transfer_payment_status` | [`BankTransferPaymentStatus`](../../doc/models/bank-transfer-payment-status.md) | Optional | Bank transfer payment status, or `null` when not applicable. |
| `bank_transfer_latest_deposit_date` | `DateTime` | Optional | Timestamp of the most recent deposit matched against a bank transfer charge. `null` when not applicable. |
| `mcp_token_id` | `UUID \| String` | Optional | ID of the multi-currency-pricing token used, when applicable. `null` when not applicable. |
| `charge_type` | [`TransactionHistoryChargeType`](../../doc/models/transaction-history-charge-type.md) | Optional | Charge type, or `null` when not applicable. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
transaction_history_item = TransactionHistoryItem.new(
  store_id: '11edf541-c42d-653c-8c3d-dfe0a55f95c0',
  resource_id: '11ef0000-0000-4000-8000-000000000070',
  charge_id: '0000005a-0000-0000-0000-000000000000',
  amount: 1000,
  currency: 'JPY',
  amount_formatted: 1000,
  type: TransactionHistoryType::CHARGE,
  status: TransactionHistoryStatus::SUCCESSFUL,
  metadata: GenericMetadata.new(
    order_id: '12345',
    univapay_name: 'univapay-name8',
    univapay_phone_number: 'univapay-phone-number2',
    additional_properties: {
      'exampleAdditionalProperty' => 'String4'
    }
  ),
  created_on: DateTimeHelper.from_rfc3339('2024-05-01T12:34:56.789Z'),
  mode: TransactionHistoryMode::TEST,
  merchant_name: 'Test merchant',
  store_name: 'Test store',
  payment_type: TransactionHistoryPaymentType::CARD,
  user_data: TransactionHistoryUserData.new(
    type: TransactionHistoryType::CHARGE,
    cardholder_name: 'Some Guy',
    cardholder_email_address: 'test4@univapay.com',
    cardholder_phone_number: 'cardholder_phone_number4',
    customer_name: 'customer_name8',
    brand: 'visa',
    gateway: 'test',
    service_provider: TransactionHistoryServiceProvider::CREDIT,
    refunds: [
      TransactionHistoryRefund.new(
        refund_id: '11ef0000-0000-4000-8000-000000000010',
        amount: 500,
        currency: 'JPY',
        amount_formatted: 500,
        status: TransactionHistoryRefundStatus::SUCCESSFUL,
        additional_properties: {
          'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
        }
      )
    ],
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  bank_transfer_payment_status: BankTransferPaymentStatus::EXACT,
  charge_type: TransactionHistoryChargeType::NORMAL,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

