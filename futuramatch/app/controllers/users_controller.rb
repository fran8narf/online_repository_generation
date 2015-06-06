class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@users = User.all
		@user = User.find(params[:id])	
	end

	private
	def user_params
		params.require(:user).permit(:name, :age, :favourite_food, :fav_prog_language)
	end
end
