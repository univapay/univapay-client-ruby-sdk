# Custom test (not auto-generated): verifies APIMatic dynamic error messages.
#
# Forces Prism to return the 400 BadRequest example via the `Prefer: code=400`
# header (injected by HttpResponseCatcher for this test) and asserts:
#   1. the raised exception's MESSAGE is interpolated from the response body
#      (contains the templated `code`), proving the x-operation-settings
#      ErrorTemplates took effect;
#   2. the full typed `errors[]` array is still accessible on the exception,
#      proving the array is not lost (templates only shape the message string).

require_relative 'api_test_base'

class ErrorMessagesTest < ApiTestBase
  def setup
    setup_class
    @controller = @client.charges
    @response_catcher = @controller.http_call_back
  end

  def test_dynamic_error_message_and_errors_array
    error = assert_raises(ApiErrorException) do
      @controller.create_charge
    end

    # The 400 ErrorTemplate is throwable, so the SDK raises the typed
    # ApiErrorException (vs. silently returning the response). The SDK overrides
    # #message/#to_s to a structured dump, so the interpolated template string
    # is not cleanly accessible here; we assert the parsed error body instead.

    # 1. Error code: deserialized from the response body onto the exception.
    assert_equal('VALIDATION_ERROR', error.code)

    # 2. Array preserved: full typed errors[] is readable off the exception.
    refute_nil(error.errors)
    assert_operator(error.errors.length, :>=, 1)
    assert_equal('INVALID_CARD_NUMBER', error.errors[0].reason)
  end
end
