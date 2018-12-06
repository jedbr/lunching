module Lunching
  module Model
    class RestaurantCategory

      def initialize(lunching_id:, name:, items: [])
        @lunching_id = lunching_id
        @name = name
        @items = items
      end

    end
  end
end
