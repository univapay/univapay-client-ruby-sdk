
# Charge Update Request

Request payload for updating charge metadata.

*This model accepts additional fields of type Object.*

## Structure

`ChargeUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_update_request = ChargeUpdateRequest.new(
  metadata: GenericMetadata.new(
    order_id: '12347'
  )
)
```

