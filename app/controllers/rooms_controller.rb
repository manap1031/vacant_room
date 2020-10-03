class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
  end

  def create
    @room = Room.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
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
    params.require(:room).permit(:image)
  end
end
