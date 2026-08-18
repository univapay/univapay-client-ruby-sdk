# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Paginated list of transaction history rows. Unlike other list responses in
  # this API, `total_hits` is only present on the first page (no `cursor`
  # supplied) or the last page, and `next_cursor` is only present while
  # `has_more` is `true`.
  class TransactionHistoryList < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # List of resources.
    # @return [Array[TransactionHistoryItem]]
    attr_accessor :items

    # Whether more results are available.
    # @return [TrueClass | FalseClass]
    attr_accessor :has_more

    # Total number of matching resources. Present on the first page (no `cursor`
    # supplied) or the last page; absent on intermediate pages while `has_more`
    # is `true`.
    # @return [Integer]
    attr_accessor :total_hits

    # Cursor to pass as `cursor` to fetch the next page. Present only while
    # `has_more` is `true`.
    # @return [UUID | String]
    attr_accessor :next_cursor

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['items'] = 'items'
      @_hash['has_more'] = 'has_more'
      @_hash['total_hits'] = 'total_hits'
      @_hash['next_cursor'] = 'next_cursor'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        items
        has_more
        total_hits
        next_cursor
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(items: SKIP, has_more: SKIP, total_hits: SKIP,
                   next_cursor: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @items = items unless items == SKIP
      @has_more = has_more unless has_more == SKIP
      @total_hits = total_hits unless total_hits == SKIP
      @next_cursor = next_cursor unless next_cursor == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (TransactionHistoryItem.from_hash(structure) if structure)
        end
      end

      items = SKIP unless hash.key?('items')
      has_more = hash.key?('has_more') ? hash['has_more'] : SKIP
      total_hits = hash.key?('total_hits') ? hash['total_hits'] : SKIP
      next_cursor = hash.key?('next_cursor') ? hash['next_cursor'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TransactionHistoryList.new(items: items,
                                 has_more: has_more,
                                 total_hits: total_hits,
                                 next_cursor: next_cursor,
                                 additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} items: #{@items}, has_more: #{@has_more}, total_hits: #{@total_hits},"\
      " next_cursor: #{@next_cursor}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} items: #{@items.inspect}, has_more: #{@has_more.inspect}, total_hits:"\
      " #{@total_hits.inspect}, next_cursor: #{@next_cursor.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
