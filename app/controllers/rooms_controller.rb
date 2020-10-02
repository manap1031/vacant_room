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

end
