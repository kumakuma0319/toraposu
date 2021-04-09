class HotelsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :hotel_for_params, only: [:show, :edit, :update]
  before_action :move_to_index, only: [:edit, :update]

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

  def show
  end

  def edit
  end

  def update
    if @hotel.update(hotel_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :price, :facilities, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index if current_user.id != @hotel.user_id
  end

  def hotel_for_params
    @hotel = Hotel.find(params[:id])
  end


end
