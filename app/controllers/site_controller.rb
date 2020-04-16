class SiteController < ApplicationController
  def index  	
  	@search_results = Unsplash::Photo.search(params[:search], 1, 12) if params[:search]   	
  end

  private
  def search_params
  	params.permit(:search)
  end
end
