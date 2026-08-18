# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Hex colors applied to the checkout widget. Always resolves to the platform
  # defaults shown here when not customized — never `null`.
  class CheckoutThemeColors < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Main background color.
    # @return [String]
    attr_accessor :main_background

    # Secondary background color.
    # @return [String]
    attr_accessor :secondary_background

    # Main accent color.
    # @return [String]
    attr_accessor :main_color

    # Main text color.
    # @return [String]
    attr_accessor :main_text

    # Primary text color.
    # @return [String]
    attr_accessor :primary_text

    # Secondary text color.
    # @return [String]
    attr_accessor :secondary_text

    # Base text color.
    # @return [String]
    attr_accessor :base_text

    # Body background color.
    # @return [String]
    attr_accessor :body_background

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['main_background'] = 'main_background'
      @_hash['secondary_background'] = 'secondary_background'
      @_hash['main_color'] = 'main_color'
      @_hash['main_text'] = 'main_text'
      @_hash['primary_text'] = 'primary_text'
      @_hash['secondary_text'] = 'secondary_text'
      @_hash['base_text'] = 'base_text'
      @_hash['body_background'] = 'body_background'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        main_background
        secondary_background
        main_color
        main_text
        primary_text
        secondary_text
        base_text
        body_background
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(main_background: SKIP, secondary_background: SKIP,
                   main_color: SKIP, main_text: SKIP, primary_text: SKIP,
                   secondary_text: SKIP, base_text: SKIP, body_background: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @main_background = main_background unless main_background == SKIP
      @secondary_background = secondary_background unless secondary_background == SKIP
      @main_color = main_color unless main_color == SKIP
      @main_text = main_text unless main_text == SKIP
      @primary_text = primary_text unless primary_text == SKIP
      @secondary_text = secondary_text unless secondary_text == SKIP
      @base_text = base_text unless base_text == SKIP
      @body_background = body_background unless body_background == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      main_background =
        hash.key?('main_background') ? hash['main_background'] : SKIP
      secondary_background =
        hash.key?('secondary_background') ? hash['secondary_background'] : SKIP
      main_color = hash.key?('main_color') ? hash['main_color'] : SKIP
      main_text = hash.key?('main_text') ? hash['main_text'] : SKIP
      primary_text = hash.key?('primary_text') ? hash['primary_text'] : SKIP
      secondary_text =
        hash.key?('secondary_text') ? hash['secondary_text'] : SKIP
      base_text = hash.key?('base_text') ? hash['base_text'] : SKIP
      body_background =
        hash.key?('body_background') ? hash['body_background'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CheckoutThemeColors.new(main_background: main_background,
                              secondary_background: secondary_background,
                              main_color: main_color,
                              main_text: main_text,
                              primary_text: primary_text,
                              secondary_text: secondary_text,
                              base_text: base_text,
                              body_background: body_background,
                              additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} main_background: #{@main_background}, secondary_background:"\
      " #{@secondary_background}, main_color: #{@main_color}, main_text: #{@main_text},"\
      " primary_text: #{@primary_text}, secondary_text: #{@secondary_text}, base_text:"\
      " #{@base_text}, body_background: #{@body_background}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} main_background: #{@main_background.inspect}, secondary_background:"\
      " #{@secondary_background.inspect}, main_color: #{@main_color.inspect}, main_text:"\
      " #{@main_text.inspect}, primary_text: #{@primary_text.inspect}, secondary_text:"\
      " #{@secondary_text.inspect}, base_text: #{@base_text.inspect}, body_background:"\
      " #{@body_background.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
