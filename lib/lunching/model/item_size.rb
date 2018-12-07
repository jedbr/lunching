module Lunching
  module Model
    class ItemSize

      def initialize(item_id:, price:)
        @item_id = item_id
        @price = price
      end

      def order
        Api::Client.order(@item_id)
      end

    end
  end
end
