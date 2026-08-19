# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # 3-D Secure configuration and redirect details applied to the subscription's
  # payments.
  class SubscriptionThreeDs < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # 3-D Secure authentication mode applied to the subscription's payments.
    # `if_available` enforces 3DS only if credentials are available for the
    # recurring token and it has not already completed 3DS. `provided` indicates
    # externally supplied MPI authentication data was used.
    # @return [SubscriptionThreeDsMode]
    attr_accessor :mode

    # URL the customer is redirected to for 3-D Secure authentication.
    # @return [String]
    attr_accessor :redirect_endpoint

    # Identifier of the 3-D Secure redirect.
    # @return [UUID | String]
    attr_accessor :redirect_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mode'] = 'mode'
      @_hash['redirect_endpoint'] = 'redirect_endpoint'
      @_hash['redirect_id'] = 'redirect_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        mode
        redirect_endpoint
        redirect_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        mode
        redirect_endpoint
        redirect_id
      ]
    end

    def initialize(mode: SKIP, redirect_endpoint: SKIP, redirect_id: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @mode = mode unless mode == SKIP
      @redirect_endpoint = redirect_endpoint unless redirect_endpoint == SKIP
      @redirect_id = redirect_id unless redirect_id == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mode = hash.key?('mode') ? hash['mode'] : SKIP
      redirect_endpoint =
        hash.key?('redirect_endpoint') ? hash['redirect_endpoint'] : SKIP
      redirect_id = hash.key?('redirect_id') ? hash['redirect_id'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionThreeDs.new(mode: mode,
                              redirect_endpoint: redirect_endpoint,
                              redirect_id: redirect_id,
                              additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionThreeDs | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} mode: #{@mode}, redirect_endpoint: #{@redirect_endpoint}, redirect_id:"\
      " #{@redirect_id}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} mode: #{@mode.inspect}, redirect_endpoint: #{@redirect_endpoint.inspect},"\
      " redirect_id: #{@redirect_id.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
