class HotelsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @hotels = Hotel.all
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @hotel = Hotel.new
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :price, :facilities, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index if current_user.id != @hotel.user_id
  end
end
