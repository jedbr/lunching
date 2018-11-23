module Lunching
  module Model
    class Restaurant

      def initialize(lunching_id:, name:)
        @lunching_id = lunching_id
        @name = name
      end

      def menu
        Api::Client.new.restaurant_categories(@lunching_id)
      end

    end
  end
end
