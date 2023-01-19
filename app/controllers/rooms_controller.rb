class RoomsController < ApplicationController
  before_action :set_room, only: [:show]

  def index
    @rooms = Room.all
  end

  def show

  end

  private
  def room_params
   params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_room
    @room = Room.find(params[:id])
  end
end
