# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Charge Create Request Three Ds schema. Either supply `mode` (and optionally
  # `redirect_endpoint`) to have Univapay run 3DS, or supply all six
  # external-MPI fields (`authentication_value` through `transaction_status`)
  # when 3DS authentication was already completed outside of Univapay — in that
  # case `mode` is set to `provided` automatically and must not be sent.
  class ChargeCreateRequestThreeDs < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # URL to redirect the customer to after 3DS authentication.
    # @return [String]
    attr_accessor :redirect_endpoint

    # 3D-Secure authentication type. App Token Secret is required to use 'skip'.
    # `if_available` enforces 3DS only if credentials are available for the
    # recurring token and it has not already completed 3DS. `provided` is set
    # automatically by the server when external MPI authentication data
    # (`authentication_value`, `eci`, etc.) is submitted on the request and
    # cannot be set manually. When omitted, the store's default 3DS policy
    # applies — do not assume 'normal'.
    # @return [ChargeCreateRequestThreeDsMode]
    attr_accessor :mode

    # External MPI: the cardholder authentication value (CAVV/AAV) returned by
    # the 3-D Secure directory server. Submit together with `eci`,
    # `ds_transaction_id`, `server_transaction_id`, `message_version`, and
    # `transaction_status` to provide externally completed 3DS authentication
    # data — either all six fields must be present, or none of them.
    # @return [String]
    attr_accessor :authentication_value

    # External MPI: the two-digit Electronic Commerce Indicator returned by the
    # directory server. Submit together with the other external MPI fields.
    # @return [String]
    attr_accessor :eci

    # External MPI: the directory server transaction ID. Submit together with
    # the other external MPI fields.
    # @return [String]
    attr_accessor :ds_transaction_id

    # External MPI: the 3DS server transaction ID. Submit together with the
    # other external MPI fields.
    # @return [String]
    attr_accessor :server_transaction_id

    # External MPI: the 3-D Secure protocol message version (e.g., '2.1.0',
    # '2.2.0'). Submit together with the other external MPI fields.
    # @return [String]
    attr_accessor :message_version

    # External MPI: the 3-D Secure directory server transaction status. Only a
    # successful authentication status is accepted. Submit together with the
    # other external MPI fields.
    # @return [String]
    attr_accessor :transaction_status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['redirect_endpoint'] = 'redirect_endpoint'
      @_hash['mode'] = 'mode'
      @_hash['authentication_value'] = 'authentication_value'
      @_hash['eci'] = 'eci'
      @_hash['ds_transaction_id'] = 'ds_transaction_id'
      @_hash['server_transaction_id'] = 'server_transaction_id'
      @_hash['message_version'] = 'message_version'
      @_hash['transaction_status'] = 'transaction_status'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        redirect_endpoint
        mode
        authentication_value
        eci
        ds_transaction_id
        server_transaction_id
        message_version
        transaction_status
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(redirect_endpoint: SKIP, mode: SKIP,
                   authentication_value: SKIP, eci: SKIP,
                   ds_transaction_id: SKIP, server_transaction_id: SKIP,
                   message_version: SKIP, transaction_status: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @redirect_endpoint = redirect_endpoint unless redirect_endpoint == SKIP
      @mode = mode unless mode == SKIP
      @authentication_value = authentication_value unless authentication_value == SKIP
      @eci = eci unless eci == SKIP
      @ds_transaction_id = ds_transaction_id unless ds_transaction_id == SKIP
      @server_transaction_id = server_transaction_id unless server_transaction_id == SKIP
      @message_version = message_version unless message_version == SKIP
      @transaction_status = transaction_status unless transaction_status == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      redirect_endpoint =
        hash.key?('redirect_endpoint') ? hash['redirect_endpoint'] : SKIP
      mode = hash.key?('mode') ? hash['mode'] : SKIP
      authentication_value =
        hash.key?('authentication_value') ? hash['authentication_value'] : SKIP
      eci = hash.key?('eci') ? hash['eci'] : SKIP
      ds_transaction_id =
        hash.key?('ds_transaction_id') ? hash['ds_transaction_id'] : SKIP
      server_transaction_id =
        hash.key?('server_transaction_id') ? hash['server_transaction_id'] : SKIP
      message_version =
        hash.key?('message_version') ? hash['message_version'] : SKIP
      transaction_status =
        hash.key?('transaction_status') ? hash['transaction_status'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      ChargeCreateRequestThreeDs.new(redirect_endpoint: redirect_endpoint,
                                     mode: mode,
                                     authentication_value: authentication_value,
                                     eci: eci,
                                     ds_transaction_id: ds_transaction_id,
                                     server_transaction_id: server_transaction_id,
                                     message_version: message_version,
                                     transaction_status: transaction_status,
                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} redirect_endpoint: #{@redirect_endpoint}, mode: #{@mode},"\
      " authentication_value: #{@authentication_value}, eci: #{@eci}, ds_transaction_id:"\
      " #{@ds_transaction_id}, server_transaction_id: #{@server_transaction_id}, message_version:"\
      " #{@message_version}, transaction_status: #{@transaction_status}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} redirect_endpoint: #{@redirect_endpoint.inspect}, mode: #{@mode.inspect},"\
      " authentication_value: #{@authentication_value.inspect}, eci: #{@eci.inspect},"\
      " ds_transaction_id: #{@ds_transaction_id.inspect}, server_transaction_id:"\
      " #{@server_transaction_id.inspect}, message_version: #{@message_version.inspect},"\
      " transaction_status: #{@transaction_status.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
