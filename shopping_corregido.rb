require 'pry'

class ShoppingCart
	@@prices_list = { #variable global de la clase
	 shoppingCart
		:apple	 	=> 10,
		:orange 	=> 5,
		:grape		=> 15,
		:banana		=> 20,
		:watermelon	=> 50
	}

	def initialize
		@cart = Hash.new 0	#hash vacio donde se almacenan las frutas
	end

	def get_item_price item
		@@prices_list[item]
	end

	def add_item_to_cart item #recibe el parámetro "item" == :apple (por ejemplo)
		@cart[item] += 1 #añade a la tabla hash un item, si no está creada, la crea, si está, añade +1
	end	

	def show
		shopping_cart_calculated = calculate_shopping_cart
		
		shopping_cart_calculated.each_with_index do |(key,value),index|
			puts "#{index+1}: #{key} => #{@cart[key]} items #{value}€"
		end

	end

	def calculate_shopping_cart
		calculated_cart = {}
		@cart.each do |key,value|
			calculated_cart[key] = get_item_price(key) * value
		end
		calculated_cart			
	end	

	def get_cost
		shopping_cart_calculated = calculate_shopping_cart
		shopping_cart_calculated.reduce(0) {|sum, (key, val)| sum += val} 	#shopping_cart_calculated.values.reduce(:+)
	end

end

shopping_cart = ShoppingCart.new #nuevo objeto de tipo ShoppingCart

shopping_cart.add_item_to_cart :apple #Se van añadiendo items al carrito 
shopping_cart.add_item_to_cart :apple
shopping_cart.add_item_to_cart :orange
shopping_cart.add_item_to_cart :orange
shopping_cart.add_item_to_cart :orange
shopping_cart.add_item_to_cart :grape
shopping_cart.add_item_to_cart :grape
shopping_cart.add_item_to_cart :grape
shopping_cart.add_item_to_cart :grape
shopping_cart.add_item_to_cart :banana

shopping_cart.show
puts "The cost of your shopping cart is #{shopping_cart.get_cost}€"
