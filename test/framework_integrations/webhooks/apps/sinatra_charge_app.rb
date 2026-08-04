require 'sinatra'
require 'json'
require 'univapay_client_sdk'

include UnivapayClientSdk

class SinatraChargeApp < Sinatra::Base
  post '/charge' do
    # Step 1: Create the handler.
    handler = ChargeHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)
  
    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(ChargeWebhookEvent) && event.event == 'charge_updated'
        content_type :json
          [200, { message: "ChargeUpdated callback received" }.to_json]
    elsif event.is_a?(UnknownEvent)
        content_type :json
          [400, { message: "Unknown event callback received" }.to_json]
    else
        content_type :json
          [400, { message: "default callback received" }.to_json]
    end
  end
end