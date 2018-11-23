module Lunching
  module Api
    module Serializers
      class Restaurants < Base

        def call
          super.map do |restaurant|
            Model::Restaurant.new(
              lunching_id: restaurant['id'],
              name: restaurant['restaurantName']
            )
          end
        end

      end
    end
  end
end
