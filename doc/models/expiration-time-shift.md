
# Expiration Time Shift

Time-of-day override applied when calculating expirations, shared by convenience-store and bank-transfer configuration.

*This model accepts additional fields of type Object.*

## Structure

`ExpirationTimeShift`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `String` | Optional | ISO-8601 offset time (HH:mm:ssXXX) that overrides the expiration cutoff. Omitted entirely when no override is configured. |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether the time-of-day override is applied. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
expiration_time_shift = ExpirationTimeShift.new(
  value: '23:59:59+09:00',
  enabled: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

