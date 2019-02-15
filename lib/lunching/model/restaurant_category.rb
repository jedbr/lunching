module Lunching
  module Model
    class RestaurantCategory

      attr_reader :lunching_id, :name, :items

      def initialize(lunching_id:, name:, items: [])
        @lunching_id = lunching_id
        @name = name
        @items = items
      end

      def show_menu
        @items.each_with_index.map { |x, i| (i + 1).to_s + '. ' + x.name  }
      end

      def choose_dish(dish_answer)
        @items[dish_answer.to_i - 1].sizes[0]
      end

    end
  end
end
