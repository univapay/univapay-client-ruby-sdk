
# Transaction History List

Paginated list of transaction history rows. Unlike other list responses in this API, `total_hits` is only present on the first page (no `cursor` supplied) or the last page, and `next_cursor` is only present while `has_more` is `true`.

*This model accepts additional fields of type Object.*

## Structure

`TransactionHistoryList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[TransactionHistoryItem]`](../../doc/models/transaction-history-item.md) | Optional | List of resources. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether more results are available. |
| `total_hits` | `Integer` | Optional | Total number of matching resources. Present on the first page (no `cursor` supplied) or the last page; absent on intermediate pages while `has_more` is `true`. |
| `next_cursor` | `UUID \| String` | Optional | Cursor to pass as `cursor` to fetch the next page. Present only while `has_more` is `true`. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
transaction_history_list = TransactionHistoryList.new(
  items: [
    TransactionHistoryItem.new(
      store_id: '11edf541-c42d-653c-8c3d-dfe0a55f95c0',
      resource_id: '11ef0000-0000-4000-8000-000000000070',
      charge_id: nil,
      amount: 1000,
      currency: 'JPY',
      amount_formatted: 1000,
      type: TransactionHistoryType::CHARGE,
      status: TransactionHistoryStatus::SUCCESSFUL,
      metadata: GenericMetadata.new(
        order_id: 'order_id0',
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
      bank_transfer_payment_status: nil,
      bank_transfer_latest_deposit_date: nil,
      mcp_token_id: nil,
      charge_type: TransactionHistoryChargeType::NORMAL,
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    TransactionHistoryItem.new(
      store_id: '11edf541-c42d-653c-8c3d-dfe0a55f95c0',
      resource_id: '11ef0000-0000-4000-8000-000000000010',
      charge_id: '11ef0000-0000-4000-8000-000000000070',
      amount: 500,
      currency: 'JPY',
      amount_formatted: 500,
      type: TransactionHistoryType::REFUND,
      status: TransactionHistoryStatus::SUCCESSFUL,
      metadata: GenericMetadata.new(
        order_id: 'order_id0',
        univapay_name: 'univapay-name8',
        univapay_phone_number: 'univapay-phone-number2',
        additional_properties: {
          'exampleAdditionalProperty' => 'String4'
        }
      ),
      created_on: DateTimeHelper.from_rfc3339('2024-05-01T13:00:00.000000Z'),
      mode: TransactionHistoryMode::TEST,
      merchant_name: 'Test merchant',
      store_name: 'Test store',
      payment_type: TransactionHistoryPaymentType::CARD,
      user_data: TransactionHistoryUserData.new(
        type: TransactionHistoryType::REFUND,
        cardholder_name: 'cardholder_name8',
        cardholder_email_address: 'cardholder_email_address0',
        cardholder_phone_number: 'cardholder_phone_number4',
        customer_name: 'customer_name8',
        reason: TransactionHistoryRefundReason::CUSTOMER_REQUEST,
        additional_properties: {
          'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
        }
      ),
      bank_transfer_payment_status: nil,
      bank_transfer_latest_deposit_date: nil,
      mcp_token_id: nil,
      charge_type: nil,
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  ],
  has_more: false,
  total_hits: 2,
  next_cursor: '11ef0000-0000-4000-8000-000000000071',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

