
# Transaction Token Update Request

Request payload for updating a transaction token.

*This model accepts additional fields of type Object.*

## Structure

`TransactionTokenUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `email` | `String` | Optional | Customer email address. |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `data` | [`TransactionTokenUpdateRequestData`](../../doc/models/transaction-token-update-request-data.md) | Optional | Transaction Token Update Request Data schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
transaction_token_update_request = TransactionTokenUpdateRequest.new(
  email: 'new_email@test.com',
  metadata: GenericMetadata.new(
    order_id: '12345'
  ),
  data: TransactionTokenUpdateRequestData.new(
    cvv: '123',
    cardholder: 'TARO YAMADA',
    exp_month: 12,
    exp_year: 2028
  )
)
```

