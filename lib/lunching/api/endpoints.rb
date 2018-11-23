# frozen_string_literal: true

module Lunching
  module Api
    module Endpoints

      def restaurants
        get('/restaurants')
      end

      def restaurant_categories(restaurant_id)
        get("/restaurants/#{restaurant_id}/categories")
      end

    end
  end
end
