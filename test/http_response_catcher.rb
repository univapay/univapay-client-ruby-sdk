# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

class HttpResponseCatcher < UnivapayClientSdk::HttpCallBack
  attr_reader :response

  def on_before_request(request)
    if caller.any? { |line| line.include?('test_create_customs_declaration1') }
      request.headers['Prefer'] = 'code=201'
    end
    if caller.any? { |line| line.include?('test_dynamic_error_message') }
      request.headers['Prefer'] = 'code=400'
    end
  end

  # Catching the response
  def on_after_response(response)
    if response && response.headers
      response.headers.each do |key, value|
        if key.to_s.downcase == 'content-type' && value.to_s == 'application/json'
          response.headers[key] = 'application/json; charset=utf-8'
        end
      end
    end
    @response = response
  end
end



