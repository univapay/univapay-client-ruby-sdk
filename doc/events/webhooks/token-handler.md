## Token Handler

Transaction token lifecycle events.

Events in this group are uniquely identified by the `event` field.

## Events

Events available in this group. Subscribe to receive webhook notifications when these events occur.

| Name | Description | Event Identifier |
|  --- | --- | --- |
| [tokenCreated](../../../doc/events/webhooks/token/token-created.md) | Fired when a new transaction token is created. The `data` field contains the full TransactionToken object. | token_created |
| [tokenUpdated](../../../doc/events/webhooks/token/token-updated.md) | Fired when a transaction token is updated (e.g., metadata change). The `data` field contains the full TransactionToken object. | token_updated |
| [tokenThreeDsUpdated](../../../doc/events/webhooks/token/token-three-ds-updated.md) | Fired when the 3-D Secure data associated with a token is updated. The `data` field contains the full TransactionToken object. | token_three_d_s_updated |
| [tokenCvvAuthUpdated](../../../doc/events/webhooks/token/token-cvv-auth-updated.md) | Fired when the CVV authorization result for a token is updated. The `data` field contains the full TransactionToken object. | token_cvv_auth_updated |
| [tokenCvvAuthCheckUpdated](../../../doc/events/webhooks/token/token-cvv-auth-check-updated.md) | Fired when the CVV auth check status for a token changes. The `data` field contains the full TransactionToken object. | token_cvv_auth_check_updated |
| [tokenReplaced](../../../doc/events/webhooks/token/token-replaced.md) | Fired when a transaction token is replaced by a new token (e.g., after card update). The `data` field contains the replacement TransactionToken object. | token_replaced |
| [recurringTokenDeleted](../../../doc/events/webhooks/token/recurring-token-deleted.md) | Fired when a recurring transaction token is deleted. The `data` field contains the deleted TransactionToken object. | recurring_token_deleted |

## SDK Usage Example

```ruby
# Implementation example for handling the `Webhooks` events with Rails
# (no signature verification).

require 'rails'
require 'action_controller/railtie'
require 'univapay_client_sdk'

include UnivapayClientSdk

# Define route
Rails.application.routes.draw do
  post '/webhooks/receive', to: 'webhooks#receive'
end

# Define controller
class WebhooksController < ActionController::API
  def receive
    # Step 1: Create the handler.
    handler = TokenHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(TokenWebhookEvent) && event.event == 'token_created'
      puts 'TokenCreated received'
      # TODO: Add tokencreated handling
    elsif event.is_a?(TokenWebhookEvent) && event.event == 'token_updated'
      puts 'TokenUpdated received'
      # TODO: Add tokenupdated handling
    elsif event.is_a?(TokenWebhookEvent) && event.event == 'token_three_d_s_updated'
      puts 'TokenThreeDsUpdated received'
      # TODO: Add tokenthreedsupdated handling
    elsif event.is_a?(UnknownEvent)
      puts 'Unknown event received'
      # TODO: Add unknown event handling
    else
      puts 'default received'
      # TODO: Add default handling
    end

    # Step 4: Return 200 OK to acknowledge receipt.
    head :ok
  end
end
```

