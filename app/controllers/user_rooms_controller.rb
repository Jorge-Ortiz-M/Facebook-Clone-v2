class UserRoomsController < ApplicationController

    before_action :authenticate_user!
    before_action :set_user_room
    before_action :validate_user_room

    def add_user_chat
        if !(@ur.first.present?)
            @user_room = UserRoom.new(user_id: @user, room_id: @room)
            if @user_room.save
                redirect_to room_path(@room)
            end
        end
    end

    def remove_user_chat
        if @ur.first.present?
            @ur.first.destroy
            redirect_to room_path(@room)
        end
    end

    private 

        def validate_user_room
            @ur = UserRoom.validate_presence(@user, @room)
        end

        def set_user_room
            @user = User.find(params[:user]).id
            @room = Room.find(params[:room]).id
        end
end
