
# Cancel Create Request

Request body to create a cancel for a charge. Only `metadata` is accepted; all other fields are determined server-side. The charge must be in a cancellable state.

*This model accepts additional fields of type Object.*

## Structure

`CancelCreateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
cancel_create_request = CancelCreateRequest.new(
  metadata: GenericMetadata.new(
    order_id: 'ORD-987'
  )
)
```

