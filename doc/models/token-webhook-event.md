
# Token Webhook Event

Webhook envelope for transaction token lifecycle events. Fired as `token_created` when a token is created, `token_updated` on metadata changes, `token_three_d_s_updated` on 3-D Secure data changes, `token_cvv_auth_updated` on CVV authorization changes, `token_cvv_auth_check_updated` on CVV auth check changes, `token_replaced` when a token is replaced by a new one (e.g., after a card update), and `recurring_token_deleted` when a recurring token is deleted. The `data` field contains the full TransactionToken object at the time of the event.

*This model accepts additional fields of type Object.*

## Structure

`TokenWebhookEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Required | Unique ID of this webhook delivery. |
| `event` | [`TokenEvent`](../../doc/models/token-event.md) | Required | Event type discriminator — `token_created`, `token_updated`, `token_three_d_s_updated`, `token_cvv_auth_updated`, `token_cvv_auth_check_updated`, `token_replaced`, or `recurring_token_deleted`. |
| `data` | [`TransactionToken`](../../doc/models/transaction-token.md) | Optional | Stored transaction token resource. |
| `created_on` | `DateTime` | Required | Timestamp when the event was fired. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_webhook_event = TokenWebhookEvent.new(
  id: '11ef0000-0000-4000-8000-000000000001',
  event: TokenEvent::TOKEN_CREATED,
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  data: TransactionToken.new(
    id: '6426bbd2-17bd-41bf-883b-1fe970db48ee',
    store_id: 'fc264608-9a9e-495e-844e-a08129a81af4',
    email: 'test@univapay.com',
    payment_type: TransactionTokenPaymentType::CARD,
    active: true,
    mode: TransactionTokenMode::LIVE,
    type: TransactionTokenType::RECURRING,
    confirmed: true,
    metadata: {
      'customer_id' => 'cust_12345'
    },
    created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
    updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z')
  )
)
```

