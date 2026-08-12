
# Cancel Update Request

Request body for updating a cancel. Only `metadata` is settable by merchants. All fields are optional; omitted fields are left unchanged.

*This model accepts additional fields of type Object.*

## Structure

`CancelUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
cancel_update_request = CancelUpdateRequest.new(
  metadata: GenericMetadata.new(
    order_id: '12345'
  )
)
```

