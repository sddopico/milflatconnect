class HomeController < ApplicationController
  def index
  	if params[:search]
  		@flats = Flat.search(params[:search]).order("created_at DESC")
		@users = User.all
		@hash = Gmaps4rails.build_markers(@flats) do |flat, marker|
		  marker.lat flat.latitude
		  marker.lng flat.longitude
		end
  	else
  		@flats = Flat.limit(0)
	end
  end
  def show
  	@flats = Flat.all
  	@comments = Comment.select("id", "date_filed", "commentor_id", "comment", "user_id")
  	@users = User.select("id", "f_name")
  end
  def edit
  	@comments = Comment.select("id", "date_filed", "commentor_id", "comment", "user_id")
  	@users = User.select("id", "f_name")
  end
end
