class HomeController < ApplicationController
  def index
  	@flats = Flat.all
  	@comments = Comment.all
  	@users = User.all
  end
  def show
  	@flats = Flat.all
  	@comments = Comment.all
  	@users = User.all
  end
end
