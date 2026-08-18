
# Checkout Bank Transfer Configuration

Bank transfer (振込) payment settings applied to checkout.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutBankTransferConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether bank transfer payments are enabled. |
| `match_amount` | [`CheckoutBankTransferMatchAmount`](../../doc/models/checkout-bank-transfer-match-amount.md) | Optional | Deposit-matching policy applied to bank transfer payments. |
| `expiration` | `String` | Optional | ISO-8601 duration before a bank transfer payment expires. |
| `expiration_time_shift` | [`ExpirationTimeShift`](../../doc/models/expiration-time-shift.md) | Optional | Time-of-day override applied when calculating expirations, shared by convenience-store and bank-transfer configuration. |
| `virtual_bank_accounts_threshold` | `Integer` | Optional | Number of unused virtual bank accounts that triggers provisioning of additional accounts.<br><br>**Constraints**: `>= 0` |
| `virtual_bank_accounts_fetch_count` | `Integer` | Optional | Number of virtual bank accounts provisioned per replenishment.<br><br>**Constraints**: `>= 1` |
| `default_extension_period` | `String` | Optional | ISO-8601 duration by which a payment deadline is extended by default. |
| `maximum_extension_period` | `String` | Optional | ISO-8601 duration for the maximum allowed extension. |
| `automatic_extension_enabled` | `TrueClass \| FalseClass` | Optional | Whether payment deadlines are extended automatically. |
| `charge_request_notification_enabled` | `TrueClass \| FalseClass` | Optional | Whether a notification is sent when a bank transfer charge is requested. |
| `charge_request_canceled_notification_enabled` | `TrueClass \| FalseClass` | Optional | Whether a notification is sent when a requested bank transfer charge is canceled. |
| `charge_expired_notification_enabled` | `TrueClass \| FalseClass` | Optional | Whether a notification is sent when a bank transfer charge expires. |
| `deposit_received_notification_enabled` | `TrueClass \| FalseClass` | Optional | Whether a notification is sent when a deposit is received. |
| `deposit_insufficient_notification_enabled` | `TrueClass \| FalseClass` | Optional | Whether a notification is sent when a deposit is insufficient. |
| `deposit_exceeded_notification_enabled` | `TrueClass \| FalseClass` | Optional | Whether a notification is sent when a deposit exceeds the requested amount. |
| `extension_notification_enabled` | `TrueClass \| FalseClass` | Optional | Whether a notification is sent when a payment deadline is extended. |
| `remind_notification_period` | `String` | Optional | ISO-8601 duration before expiration at which a reminder notification is sent. |
| `remind_notification_enabled` | `TrueClass \| FalseClass` | Optional | Whether reminder notifications are sent before a payment deadline. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_bank_transfer_configuration = CheckoutBankTransferConfiguration.new(
  enabled: true,
  match_amount: CheckoutBankTransferMatchAmount::DISABLED,
  expiration: 'PT72H',
  expiration_time_shift: ExpirationTimeShift.new(
    value: 'value4',
    enabled: false,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  virtual_bank_accounts_threshold: 5,
  virtual_bank_accounts_fetch_count: 10,
  default_extension_period: 'PT168H',
  maximum_extension_period: 'PT168H',
  automatic_extension_enabled: false,
  charge_request_notification_enabled: false,
  charge_request_canceled_notification_enabled: false,
  charge_expired_notification_enabled: false,
  deposit_received_notification_enabled: false,
  deposit_insufficient_notification_enabled: false,
  deposit_exceeded_notification_enabled: false,
  extension_notification_enabled: false,
  remind_notification_period: 'PT168H',
  remind_notification_enabled: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

