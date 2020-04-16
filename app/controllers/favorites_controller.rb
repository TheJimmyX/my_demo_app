class FavoritesController < ApplicationController
	def index
		@favorites = Favorite.all
	end

	def create
		@favorite = Favorite.new(favorite_params)

		if @favorite.save
			flash[:success] = "You have saved one favorite."
			redirect_to root_path(search: params[:search_by])
		else
			flash[:danger] = "Something went wrong saving you favorite image."
			redirect_to root_path(search: params[:search_by])
		end
	end

	private
  	def favorite_params
  		params.permit(:photo_id, :photo_url_small)
  	end
end
