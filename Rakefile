task :order do
  load 'lib/lunching.rb'

  # client = Lunching::Api::Client
  restaurant = Lunching::Model::Restaurant.new(lunching_id: '195', name: 'Sielanka')

  restaurant_menu = restaurant.menu
  dishes = restaurant_menu[0].inspect.scan(/[@][l]\w*[=]\d*/)
  first_sielanka = dishes.inspect.scan(/[0-9]\d*/)

  dish_to_order = Lunching::Model::ItemSize.new(lunching_id: first_sielanka[1].to_i, price: '3')
  dish_to_order.order
end
