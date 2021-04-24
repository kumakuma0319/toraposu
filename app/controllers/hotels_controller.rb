class HotelsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :hotel_for_params, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @hotels = Hotel.all
  end

  def create
    @hotel = Hotel.new(hotel_params)
    binding.pry
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

  def destroy
    @hotel.destroy
    redirect_to root_path
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
    params.require(:hotel).permit(:name, :price, :facilities, :check_in_hour, :check_in_minutes, :check_out_hour, :check_out_minutes, :adress, :others_infomation, images:[]).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index if current_user.id != @hotel.user_id
  end

  def hotel_for_params
    @hotel = Hotel.find(params[:id])
  end


end
