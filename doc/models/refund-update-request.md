
# Refund Update Request

Request body for updating a refund. All fields are optional. Omitted fields are left unchanged.

*This model accepts additional fields of type Object.*

## Structure

`RefundUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `message` | `String` | Optional | Update or clear the refund note. Send `null` to remove. |
| `reason` | [`RefundReasonRequest`](../../doc/models/refund-reason-request.md) | Optional | Merchant-settable refund reason, or `null` to remove it during update. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
refund_update_request = RefundUpdateRequest.new(
  metadata: GenericMetadata.new(
    order_id: '12345'
  ),
  message: 'Updated reason note'
)
```

