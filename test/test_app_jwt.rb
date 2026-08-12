# Custom test (not auto-generated): pins the App Token claim-decoding contract
# behind get_current_merchant_id / get_current_store_id.
#
# This contract is implemented seven times -- once per SDK -- and has already
# drifted twice: the Python SDK accepted non-canonical UUIDs that the others
# rejected, and the TypeScript SDK rejected a payload segment carrying '='
# padding that the others accepted. Neither was caught by a test, because none
# existed.
#
# So the cases below are deliberately a *shared table*: keep them identical in
# all seven SDKs. The failure being guarded against is the languages disagreeing
# with each other, which no single-language suite can see.
#
# Everything here is synthetic and offline -- no network, no environment, no real
# credential. It must pass in CI, where no token is configured.

require 'json'
require 'minitest/autorun'
require 'univapay_client_sdk'

class AppJwtTest < Minitest::Test
  include UnivapayClientSdk

  MERCHANT_ID = '11ec8e24-0ecf-2c5a-923c-331b915dc311'.freeze
  STORE_ID = '11ec8e24-b133-6c68-b54d-971717202e9b'.freeze

  # pack('m0') is strict base64 and needs no `base64` gem, which stopped being a
  # default gem in Ruby 3.4 -- the same reason the SDK itself avoids it.
  def base64url(bytes, padded: false)
    encoded = [bytes].pack('m0').tr('+/', '-_')
    padded ? encoded : encoded.delete('=')
  end

  # Builds a JWT carrying `claims`. Header and signature are inert.
  def jwt(claims, padded: false)
    header = base64url('{"alg":"HS256","typ":"JWT"}')
    "#{header}.#{base64url(JSON.generate(claims), padded: padded)}.c2ln"
  end

  # Builds a JWT whose payload segment is `payload`, base64url-encoded.
  def raw_jwt(payload)
    "aGRy.#{base64url(payload)}.c2ln"
  end

  def client_with(jwt_token)
    Client.new(
      bearer_auth_credentials: BearerAuthCredentials.new(
        secret_key: 'not-a-real-secret', jwt_token: jwt_token
      )
    )
  end

  def test_reads_both_ids_from_store_level_token
    client = client_with(jwt({ 'merchant_id' => MERCHANT_ID, 'store_id' => STORE_ID }))

    assert_equal MERCHANT_ID, client.get_current_merchant_id
    assert_equal STORE_ID, client.get_current_store_id
  end

  def test_reads_merchant_from_merchant_level_token_and_reports_no_store
    # A merchant-level token carries no store_id claim at all. nil here is the
    # correct answer, not a decoding failure.
    client = client_with(jwt({ 'merchant_id' => MERCHANT_ID }))

    assert_equal MERCHANT_ID, client.get_current_merchant_id
    assert_nil client.get_current_store_id
  end

  def test_accepts_payload_segment_that_carries_padding
    # The TypeScript SDK once rejected exactly this, making it the only one of
    # the seven to return nil for a padded -- but still valid -- token.
    client = client_with(jwt({ 'merchant_id' => MERCHANT_ID, 'store_id' => STORE_ID }, padded: true))

    assert_equal MERCHANT_ID, client.get_current_merchant_id
    assert_equal STORE_ID, client.get_current_store_id
  end

  def test_returns_nil_never_raises_for_unusable_input
    cases = [
      ['a claim that is JSON null', jwt({ 'store_id' => nil })],
      ['a claim that is not a string', jwt({ 'store_id' => 42 })],
      ['an undashed 32-character UUID', jwt({ 'store_id' => STORE_ID.delete('-') })],
      ['a braced UUID', jwt({ 'store_id' => "{#{STORE_ID}}" })],
      ['a urn:uuid: prefixed UUID', jwt({ 'store_id' => "urn:uuid:#{STORE_ID}" })],
      ['short hex groups (1-1-1-1-1)', jwt({ 'store_id' => '1-1-1-1-1' })],
      ['a UUID with a trailing newline', jwt({ 'store_id' => "#{STORE_ID}\n" })],
      ['a UUID padded with spaces', jwt({ 'store_id' => " #{STORE_ID} " })],
      ['a two-segment token', 'aGRy.c2ln'],
      ['a payload that is not base64url', 'aGRy.!!!!.c2ln'],
      ['a payload that is a JSON array', raw_jwt('[1,2]')],
      ['a payload that is not JSON', raw_jwt('definitely not json')],
      ['an empty string', ''],
      # The Authorization header value is {secret}.{jwt} -- four segments once
      # split. Pasting that whole value into the jwt_token field is the mistake
      # the guide warns about, and it must degrade to nil, not to a wrong id.
      ['the combined {secret}.{jwt} header value', "c2VjcmV0.#{jwt({ 'store_id' => STORE_ID })}"]
    ]

    failures = cases.filter_map do |label, token|
      begin
        store_id = client_with(token).get_current_store_id
        "#{label} -> expected nil but got #{store_id.inspect}" unless store_id.nil?
      rescue StandardError => e
        "#{label} -> raised #{e.class}: #{e.message}"
      end
    end

    assert_empty failures, "cases that did not degrade to nil:\n  #{failures.join("\n  ")}"
  end

  def test_returns_nil_when_no_credentials_configured
    client = Client.new

    assert_nil client.get_current_merchant_id
    assert_nil client.get_current_store_id
  end
end
