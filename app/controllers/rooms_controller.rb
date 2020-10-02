class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
  end

  def create
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def search
    @rooms = Room.search
    # (params[:keyword])
  end

  private
  def room_params
    params.require(:room).permit(:image, :prefectures, :postal_code, :city, :town, :building, :phone_number, :comment,:prefecture_id)
  end
end
