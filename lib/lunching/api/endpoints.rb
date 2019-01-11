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

      def order(dish_id)
        post('/account/current-basket', json: order_payload(dish_id))
      end

      private

      def order_payload(dish_id) # rubocop:disable Metrics/MethodLength
        {
          basketItems: [
            {
              basketItems: [],
              discount: 0,
              itemFeatureId: dish_id,
              price: 12.5,
              quantity: 1
            }
          ]
        }
      end

    end
  end
end
