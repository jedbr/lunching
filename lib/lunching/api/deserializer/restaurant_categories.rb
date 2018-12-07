module Lunching
  module Api
    module Deserializer
      class RestaurantCategories < Base

        ITEM_SIZE_MAPPER = proc do |size|
          Model::ItemSize.new(
            item_id: size['itemFeatureId'],
            price: Float(size['price'])
          )
        end

        CATEGORY_ITEM_MAPPER = proc do |item|
          Model::CategoryItem.new(
            name: "#{item['name']} #{item['description']}",
            sizes: item['sizes'].map(&ITEM_SIZE_MAPPER)
          )
        end

        def call
          super.map do |restaurant_category|
            Model::RestaurantCategory.new(
              lunching_id: restaurant_category['categoryId'],
              name: restaurant_category['name'],
              items: restaurant_category['items'].map(&CATEGORY_ITEM_MAPPER)
            )
          end
        end

      end
    end
  end
end
