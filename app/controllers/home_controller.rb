class HomeController < ApplicationController
  def index
  	@flats = Flat.all
  	@comments = Comment.all
  	@users = User.all
  	@hash = Gmaps4rails.build_markers(@flats) do |flat, marker|
	  marker.lat flat.latitude
	  marker.lng flat.longitude
	end
  end
  def show
  	@flats = Flat.all
  	@comments = Comment.all
  	@users = User.all
  end
  def edit
  	@comments = Comment.all
  	@users = User.all
  end
end
