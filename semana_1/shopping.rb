class ShoppingCart

	attr_accessor :apple, :orange, :grapes, :banana, :watermelon
	def initialize apple, orange, grapes, banana, watermelon
		@apple = apple
		@orange = orange
		@grapes = grapes
		@banana = banana
		@watermelon = watermelon

		@apple_price = 10
		@orange_price = 5
		@grapes_price = 15
		@banana_price = 20
		@watermelon_price = 50

		@total_price = 0
		@grapes_count = 0

	end

	#Método que muestra la carta de precios.
	def show_price_card
		puts "\n***Prices Card***\nApples: #{@apple_price}$\nOranges: #{@orange_price}$\nGrapes: #{@grapes_price}$\nBananas: #{@banana_price}$\nWatermelons: #{@watermelon_price}$\n"
	end

	#Método que muestra la lista de la compra.
	def show_list
		puts "\n***Current List***\nApples: #{apple}\nOranges: #{orange}\nGrapes: #{grapes}\nBananas: #{banana}\nWatermelons: #{watermelon}"
	end

	#Método que calcula el precio total de los productos comprados. ->>Las ofertas las calculo aquí también <<-
	def calculate_total
		
		@apple_price *= (@apple/2) #Se divide entre 2 por la oferta de 2x1 en Manzanas
		@orange_price *= (@orange*0.67) #Si cada 3 paga 2 (2/3=0.6666666667) redondeando 0.67, es la proporción de lo que debería pagar por una naranja.
		@grapes_price *= @grapes

		@banana_price *= @banana
		@watermelon_price*= @watermelon

		@grapes_count = @grapes/4 #Variable auxiliar que cuenta los racimos de uva y lo divide /4 para sacar las bananas extra.
		@banana += @grapes_count #Se suman las bananas extra.

		@total_price = @apple_price+@orange_price+@grapes_price+@banana_price+@watermelon_price
	end

	#Método que muestra el precio de total de cada producto y el final del conjunto.
	def show_total_price
		puts "\n***Checkout***\nApples: #{@apple_price}$\nApples: #{@apple_price}$\nOranges: #{@orange_price}$\nGrapes: #{@grapes_price}$\nBananas: #{@banana_price}$\nWatermelons: #{@watermelon_price}$\n"
		puts "\nTotal - #{@total_price}$"
	end

end

new_cart = ShoppingCart.new 2,4,5,20,10

new_cart.show_list

new_cart.show_price_card

new_cart.calculate_total

new_cart.show_total_price