module Lunching
  module Model
    class ItemSize

      def initialize(lunching_id:, price:)
        @lunching_id = lunching_id
        @price = price
      end

      def order
        Api::Client.order(@lunching_id)
      end

    end
  end
end
