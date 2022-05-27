class MessagesController < ApplicationController

    before_action :authenticate_user!
    before_action :set_room

    def create
        @message = @room.messages.build(message_params)
        @message.user_id = current_user.id
        @message.save
        redirect_to room_path(@room)
    end

    private 
        def message_params
            params.require(:message).permit(:content)
        end
        
        def set_room
            @room = Room.find(params[:room_id])
        end
end
