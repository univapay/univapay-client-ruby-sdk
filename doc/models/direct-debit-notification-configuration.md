
# Direct Debit Notification Configuration

Which direct debit email notifications the merchant has opted into.

*This model accepts additional fields of type Object.*

## Structure

`DirectDebitNotificationConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `notify_deadline_mailing` | `TrueClass \| FalseClass` | Optional | Notify when the deadline for the bank to receive the signed mandate approaches (郵送期限の通知). |
| `notify_deadline_debit` | `TrueClass \| FalseClass` | Optional | Notify when the transfer registration cutoff approaches (締切日の通知). |
| `notify_debit_update` | `TrueClass \| FalseClass` | Optional | Notify when transfer results are reflected (振替結果の通知). |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
direct_debit_notification_configuration = DirectDebitNotificationConfiguration.new(
  notify_deadline_mailing: true,
  notify_deadline_debit: true,
  notify_debit_update: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

