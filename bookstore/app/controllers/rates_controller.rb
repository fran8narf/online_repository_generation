class RatesController < ApplicationController
	def create
		@book = Book.find(params[:book_id])
		@rate = @book.rates.create(params[:rate].permit(:name, :rating))

		redirect_to book_path(@book)
	end
end
