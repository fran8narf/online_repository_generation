class PostsController < ApplicationController
	def index
		@post = Post.all.order('created_at DESC') #order new posts
	end

	def new
	end

	def create
		@post = Post.new(post_params)
		@post.save

		redirect_to @post #redirecciona a new post
	end

	def show
		@post = Post.find(params[:id])
	end

	private 
		def post_params
			params.required(:post).permit(:title, :body)
		end
end
