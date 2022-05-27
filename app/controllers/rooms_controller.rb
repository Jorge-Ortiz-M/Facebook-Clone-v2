class RoomsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_room, only: [:show]
  
  def create
    @room = current_user.rooms.new(room_params)
    
    if @room.save
      @user_room = UserRoom.create(user_id: @room.user_id, room_id: @room.id)
      redirect_to room_path(@room), notice: "Room successfully created."
    else
      redirect_to root_path, alert: "A room has this name. Please change the Room's name."
    end
  end

  def show
    @users = User.all_except(current_user)
    @message = Message.new
  end

  private
    def room_params
      params.require(:room).permit(:name)
    end

    def set_room
      @room = Room.find(params[:id])
    end
end
