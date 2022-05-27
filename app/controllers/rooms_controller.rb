class RoomsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_room, only: [:show]
  
  def create
    @room = Room.new(room_params)
    
    if @room.save
      UserRoom.create(user_id: current_user.id, room_id: @room.id)
      redirect_to room_path(@room), notice: "Room successfully created."
    end
  end

  def show
    @users = User.all_except(current_user)
  end

  private
    def room_params
      params.require(:room).permit(:name)
    end

    def set_room
      @room = Room.find(params[:id])
    end
end
