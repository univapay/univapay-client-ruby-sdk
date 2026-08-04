require "hanami/router"
require "hanami/controller"
require "json"
require 'univapay_client_sdk'

include UnivapayClientSdk

# Version handling for Hanami
if RUBY_VERSION < "3.0"
  # Hanami 1.x
  class HanamiChargeApp
    include Hanami::Action

    def handle_event(request, response)
      # Step 1: Create the handler.
      handler = ChargeHandler.new

      # Step 2: Parse the request into a typed event.
      event = handler.parse_event(request)
    
      # Step 3: Pattern match on the event types and handle it.
      if event.is_a?(ChargeWebhookEvent) && event.event == 'charge_updated'
        self.status = 200
          self.body = { message: "ChargeUpdated callback received" }.to_json
      elsif event.is_a?(UnknownEvent)
        self.status = 400
          self.body = { message: "Unknown event callback received" }.to_json
      else
        self.status = 400
          self.body = { message: "default callback received" }.to_json
      end
  end
  end
else
  # Hanami 2.x
  class HanamiChargeApp < Hanami::Action
    def handle_event(request, response)
      # Step 1: Create the handler.
      handler = ChargeHandler.new

      # Step 2: Parse the request into a typed event.
      event = handler.parse_event(request)
    
      # Step 3: Pattern match on the event types and handle it.
      if event.is_a?(ChargeWebhookEvent) && event.event == 'charge_updated'
        self.status = 200
          self.body = { message: "ChargeUpdated callback received" }.to_json
      elsif event.is_a?(UnknownEvent)
        self.status = 400
          self.body = { message: "Unknown event callback received" }.to_json
      else
        self.status = 400
          self.body = { message: "default callback received" }.to_json
      end
  end
  end
end

ChargeRouter = Hanami::Router.new do
  post '/charge', to: HanamiChargeApp.new
end