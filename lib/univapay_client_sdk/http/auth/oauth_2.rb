# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Utility class for OAuth 2 authorization and token management.
  class Oauth2 < CoreLibrary::HeaderAuth
    include CoreLibrary
    # Display error message on occurrence of authentication failure.
    # @returns [String] The oAuth error message.
    def error_message
      'BearerAuth: secret_key/jwt_token is undefined.'
    end

    # Initialization constructor.
    def initialize(bearer_auth_credentials)
      auth_params = {}
      unless bearer_auth_credentials.nil? ||
             bearer_auth_credentials.secret_key.nil? ||
             bearer_auth_credentials.jwt_token.nil?
        @_secret_key = bearer_auth_credentials.secret_key
        @_jwt_token = bearer_auth_credentials.jwt_token
      end
      auth_params[:Authorization] = "Bearer #{@_secret_key}.#{@_jwt_token}" unless @_secret_key.nil?

      super auth_params
    end
  end

  # Data class for BearerAuthCredentials.
  class BearerAuthCredentials
    attr_reader :secret_key, :jwt_token

    def initialize(secret_key:, jwt_token:)
      raise ArgumentError, 'secret_key cannot be nil' if secret_key.nil?
      raise ArgumentError, 'jwt_token cannot be nil' if jwt_token.nil?

      @secret_key = secret_key
      @jwt_token = jwt_token
    end

    def self.from_env
      secret_key = ENV['SECRET_KEY']
      jwt_token = ENV['JWT_TOKEN']
      return nil if secret_key.nil? || jwt_token.nil?

      new(secret_key: secret_key, jwt_token: jwt_token)
    end

    def clone_with(secret_key: nil, jwt_token: nil)
      secret_key ||= self.secret_key
      jwt_token ||= self.jwt_token

      BearerAuthCredentials.new(secret_key: secret_key, jwt_token: jwt_token)
    end
  end
end
