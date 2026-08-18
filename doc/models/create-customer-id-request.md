
# Create Customer Id Request

Request payload for deriving a deterministic customer ID.

*This model accepts additional fields of type Object.*

## Structure

`CreateCustomerIdRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Required | The merchant's own local identifier for the customer, used as the seed for a deterministic per-store UUID.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `64` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
create_customer_id_request = CreateCustomerIdRequest.new(
  customer_id: 'local-customer-1902'
)
```

