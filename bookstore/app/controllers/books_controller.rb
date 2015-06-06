class BooksController < ApplicationController
	def index
		@books = Book.all.order('created_at DESC')
		@books = Book.search params[:search]
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)

		if @book.save
			redirect_to @book
		else
			render 'new'
		end
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])

		if @book.update(params[:book].permit(:name, :price, :description))
			redirect_to @book
		else
			render 'edit'
		end
	end



	def destroy
		@book = Book.find(params[:id])
		@book.destroy

		redirect_to books_path
	end

	private
	def book_params
		params.require(:book).permit(:name, :price, :description)	
	end
end
