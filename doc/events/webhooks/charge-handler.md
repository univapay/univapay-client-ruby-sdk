## Charge Handler

Charge lifecycle events.

Events in this group are uniquely identified by the `event` field.

## Events

Events available in this group. Subscribe to receive webhook notifications when these events occur.

| Name | Description | Event Identifier |
|  --- | --- | --- |
| [chargeUpdated](../../../doc/events/webhooks/charge/charge-updated.md) | Fired whenever a charge transitions to a new status (e.g., `pending` → `awaiting`). The `data` field contains the full Charge object at the time of the event. | charge_updated |
| [chargeFinished](../../../doc/events/webhooks/charge/charge-finished.md) | Fired when a charge reaches a terminal status (`successful`, `failed`, `error`). The `data` field contains the full Charge object. | charge_finished |

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
    handler = ChargeHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(ChargeWebhookEvent) && event.event == 'charge_updated'
      puts 'ChargeUpdated received'
      # TODO: Add chargeupdated handling
    elsif event.is_a?(ChargeWebhookEvent) && event.event == 'charge_finished'
      puts 'ChargeFinished received'
      # TODO: Add chargefinished handling
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

