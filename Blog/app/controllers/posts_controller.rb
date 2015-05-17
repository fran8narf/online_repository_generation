class PostsController < ApplicationController
	def index
		@post = Post.all.order('created_at DESC') #order new posts
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to @post #redirecciona a new post también hace una petición http nueva, lo que hace perder los datos.
		else
			render 'new'
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	private 
		def post_params
			params.required(:post).permit(:title, :body)
		end
end
