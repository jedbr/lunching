module Lunching
  module Api
    module Deserializer
      class RestaurantCategories < Base

        def call
          super.map do |restaurant_category|
            Model::RestaurantCategory.new(
              lunching_id: restaurant_category['categoryId'],
              name: restaurant_category['name'],
              items: restaurant_category['items'].map do |item|
                Model::CategoryItem.new(
                  name: item['name'] + ' ' + item['description'],
                  sizes: item['sizes'].map do |item_size|
                    Model::ItemSize.new(
                      lunching_id: item_size['itemFeatureId'],
                      price: item_size['price'].to_s + 'zł'
                    )
                  end
                )
              end
            )
          end
        end

      end
    end
  end
end
