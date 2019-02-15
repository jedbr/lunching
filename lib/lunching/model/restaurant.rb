module Lunching
  module Model
    class Restaurant

      attr_reader :lunching_id, :name

      def initialize(lunching_id:, name:)
        @lunching_id = lunching_id
        @name = name
      end

      def menu
        Api::Client.restaurant_categories(@lunching_id)
      end

      def show_categories
        menu.each_with_index.map { |x, i| (i + 1).to_s + '. ' + x.name }
      end

      def choose_category(category_answer)
        menu[category_answer.to_i - 1]
      end

    end
  end
end
