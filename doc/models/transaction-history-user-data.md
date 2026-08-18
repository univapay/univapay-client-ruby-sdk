
# Transaction History User Data

Payment-type-specific details for this row. This is a single flat object covering every payment type — the fields actually populated depend on `payment_type` (documented per field below). Fields not applicable to a given payment type are omitted.

*This model accepts additional fields of type Object.*

## Structure

`TransactionHistoryUserData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`TransactionHistoryType`](../../doc/models/transaction-history-type.md) | Optional | Whether this row represents a charge or a refund. |
| `cardholder_name` | `String` | Optional | Cardholder name. Present for `card` and `apple_pay` rows only. |
| `cardholder_email_address` | `String` | Optional | Cardholder/customer email address. Present for every payment type except `konbini`'s legacy alias fields; always non-null for `bank_transfer` rows, nullable for every other type. |
| `cardholder_phone_number` | `String` | Optional | Cardholder phone number. Present for `paidy` rows only. |
| `customer_name` | `String` | Optional | Customer name as entered at checkout. Present for `konbini` rows only (empty string when not provided). |
| `convenience_store` | `String` | Optional | Legacy duplicate of `brand`. Present for `konbini` rows only. |
| `brand` | `String` | Optional | Raw brand identifier for the payment method. Present for every payment type; the value set is payment-type-specific (e.g. card brands for `card`/`apple_pay`, QR brands for `qr_scan`/`qr_merchant`, online-wallet brands for `online`, convenience-store brands for `konbini`, `paidy` for `paidy` rows). Nullable for `qr_scan`, `qr_merchant`, and `online`; always non-null for the other types. |
| `gateway` | `String` | Optional | Raw gateway identifier that processed the payment. Present for every payment type. |
| `service_provider` | [`TransactionHistoryServiceProvider`](../../doc/models/transaction-history-service-provider.md) | Optional | Service provider, or `null` when not reported. |
| `refunds` | [`Array[TransactionHistoryRefund]`](../../doc/models/transaction-history-refund.md) | Optional | Refunds issued against this charge. Present for charge rows only (`type: charge`); absent for refund rows. |
| `reason` | [`TransactionHistoryRefundReason`](../../doc/models/transaction-history-refund-reason.md) | Optional | Refund reason, or `null` when unset. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
transaction_history_user_data = TransactionHistoryUserData.new(
  type: TransactionHistoryType::CHARGE,
  cardholder_name: 'Some Guy',
  cardholder_email_address: 'test4@univapay.com',
  brand: 'visa',
  gateway: 'test',
  service_provider: TransactionHistoryServiceProvider::CREDIT,
  refunds: [
    TransactionHistoryRefund.new(
      refund_id: '11ef0000-0000-4000-8000-000000000010',
      amount: 500,
      currency: 'JPY',
      amount_formatted: 500,
      status: TransactionHistoryRefundStatus::SUCCESSFUL
    )
  ]
)
```

