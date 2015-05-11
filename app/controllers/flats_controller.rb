class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
 #before_action :authenticate_user!
  respond_to :html

  def index
    @flats = Flat.all
    @flat = Flat.new
    respond_with(@flats)
  end

  def show
    respond_with(@flat)
  end

  def new
    @flat = Flat.new
    respond_with(@flat)
  end

  def edit
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
	respond_with(@flat)
  end

  def update
    @flat.update(flat_params)
    respond_with(@flat)
  end

  def destroy
    @flat.destroy
    respond_with(@flat)
  end

  private
    def set_flat
      @flat = Flat.find(params[:id])
    end

    def flat_params
      params.require(:flat).permit(:tagline, :available_date, :latitude, :longitude, :address, :city, :base, :description, :bedroom, :bathroom, :price,
      :sec_deposit, :cleaning_fee, :house_rules, :photo, :user_id)
    end
end
