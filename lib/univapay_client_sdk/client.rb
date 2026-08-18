# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'http/http_call_back'

module UnivapayClientSdk
  # IdempotencyCallback is defined in univapay_client_sdk/extensions.rb (a file
  # APIMatic never generates) to avoid regeneration conflicts. It is loaded with
  # the library before any client is instantiated.

  #  univapay_client_sdk client class.
  class Client
    include CoreLibrary
    attr_reader :config, :auth_managers

    def user_agent_detail
      config.user_agent_detail
    end

    # Access to charges controller.
    # @return [ChargesApi] Returns the controller instance.
    def charges
      @charges ||= ChargesApi.new @global_configuration
    end

    # Access to transaction_tokens controller.
    # @return [TransactionTokensApi] Returns the controller instance.
    def transaction_tokens
      @transaction_tokens ||= TransactionTokensApi.new @global_configuration
    end

    # Access to refunds controller.
    # @return [RefundsApi] Returns the controller instance.
    def refunds
      @refunds ||= RefundsApi.new @global_configuration
    end

    # Access to subscriptions controller.
    # @return [SubscriptionsApi] Returns the controller instance.
    def subscriptions
      @subscriptions ||= SubscriptionsApi.new @global_configuration
    end

    # Access to cancels controller.
    # @return [CancelsApi] Returns the controller instance.
    def cancels
      @cancels ||= CancelsApi.new @global_configuration
    end

    # Access to merchants controller.
    # @return [MerchantsApi] Returns the controller instance.
    def merchants
      @merchants ||= MerchantsApi.new @global_configuration
    end

    # Access to stores controller.
    # @return [StoresApi] Returns the controller instance.
    def stores
      @stores ||= StoresApi.new @global_configuration
    end

    # Access to webhooks controller.
    # @return [WebhooksApi] Returns the controller instance.
    def webhooks
      @webhooks ||= WebhooksApi.new @global_configuration
    end

    # Access to direct_debit controller.
    # @return [DirectDebitApi] Returns the controller instance.
    def direct_debit
      @direct_debit ||= DirectDebitApi.new @global_configuration
    end

    # Access to checkout controller.
    # @return [CheckoutApi] Returns the controller instance.
    def checkout
      @checkout ||= CheckoutApi.new @global_configuration
    end

    # Access to transaction_history controller.
    # @return [TransactionHistoryApi] Returns the controller instance.
    def transaction_history
      @transaction_history ||= TransactionHistoryApi.new @global_configuration
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 30,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524, 408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put get put], http_callback: nil,
      proxy_settings: nil, logging_configuration: nil,
      environment: Environment::PRODUCTION,
      base_url: 'https://api.univapay.com',
      direct_debit_base_url: 'https://direct-debit.gopay-services.com',
      bearer_auth_credentials: nil, config: nil
    )
      @config = if config.nil?
                  Configuration.new(
                    connection: connection, adapter: adapter, timeout: timeout,
                    max_retries: max_retries, retry_interval: retry_interval,
                    backoff_factor: backoff_factor,
                    retry_statuses: retry_statuses,
                    retry_methods: retry_methods,
                    http_callback: IdempotencyCallback.new(http_callback),
                    proxy_settings: proxy_settings,
                    logging_configuration: logging_configuration,
                    environment: environment, base_url: base_url,
                    direct_debit_base_url: direct_debit_base_url,
                    bearer_auth_credentials: bearer_auth_credentials
                  )
                elsif config.http_callback.is_a?(IdempotencyCallback)
                  config
                else
                  config.clone_with(
                    http_callback: IdempotencyCallback.new(config.http_callback)
                  )
                end
      user_agent_params = BaseApi.user_agent_parameters

      @global_configuration = GlobalConfiguration.new(client_configuration: @config)
                                                 .base_uri_executor(@config.method(:get_base_uri))
                                                 .global_errors(BaseApi::GLOBAL_ERRORS)
                                                 .user_agent(BaseApi.user_agent,
                                                             agent_parameters: user_agent_params)

      initialize_auth_managers(@global_configuration)
      @global_configuration = @global_configuration.auth_managers(@auth_managers)
    end

    # Initializes the auth managers hash used for authenticating API calls.
    # @param [GlobalConfiguration] global_config The global configuration of the SDK)
    def initialize_auth_managers(global_config)
      @auth_managers = {}
      http_client_config = global_config.client_configuration
      %w[JWT_TOKEN].each { |auth| @auth_managers[auth] = nil }
      @auth_managers['JWT_TOKEN'] = Oauth2.new(http_client_config.bearer_auth_credentials)
    end

    # Creates a client directly from environment variables.
    def self.from_env(**overrides)
      default_config = Configuration.build_default_config_from_env
      new_config = default_config.clone_with(**overrides)
      new(config: new_config)
    end
  end
end

# Hand-authored extensions (IdempotencyCallback and the poll_* helpers) live in a
# file APIMatic never generates. Required from here rather than from the end of
# lib/univapay_client_sdk.rb, because that is exactly where APIMatic appends the
# require for each new controller — the two collided on every regeneration that
# added an endpoint group. extensions.rb requires the classes it reopens, so it
# does not care that this runs before the entry point loads the controllers.
require_relative 'extensions'
