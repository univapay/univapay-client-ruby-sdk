
# Charge Webhook Event

Webhook envelope for charge lifecycle events. Fired as `charge_updated` whenever a charge transitions to a new status (e.g., `pending` → `awaiting`), and as `charge_finished` when a charge reaches a terminal status (`successful`, `failed`, `error`). The `data` field contains the full Charge object at the time of the event.

*This model accepts additional fields of type Object.*

## Structure

`ChargeWebhookEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Required | Unique ID of this webhook delivery. |
| `event` | [`ChargeEvent`](../../doc/models/charge-event.md) | Required | Event type discriminator — `charge_updated` or `charge_finished`. |
| `data` | [`Charge`](../../doc/models/charge.md) | Optional | Charge resource returned by the payments API. |
| `created_on` | `DateTime` | Required | Timestamp when the event was fired. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_webhook_event = ChargeWebhookEvent.new(
  id: '11ef0000-0000-4000-8000-000000000001',
  event: ChargeEvent::CHARGE_UPDATED,
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  data: Charge.new(
    id: '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98',
    store_id: '11edf541-c42d-653c-8c3d-dfe0a55f95c0',
    transaction_token_id: '11ef32a7-3a71-8662-803f-1bc27702eeec',
    transaction_token_type: ChargeTransactionTokenType::RECURRING,
    subscription_id: '11ef335e-9aa5-c54a-8313-7f9847da313a',
    requested_amount: 1250,
    requested_currency: 'USD',
    requested_amount_formatted: 12.5,
    charged_amount: 1250,
    charged_currency: 'USD',
    charged_amount_formatted: 12.5,
    only_direct_currency: false,
    status: ChargeStatus::SUCCESSFUL,
    error: nil,
    mode: ChargeMode::TEST,
    created_on: DateTimeHelper.from_rfc3339('2024-06-26T01:51:30.000000Z'),
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

