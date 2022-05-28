class MessagesController < ApplicationController

    before_action :authenticate_user!
    before_action :set_room

    def create
        @message = @room.messages.build(message_params)
        @message.user_id = current_user.id
        @message.save
        ActionCable.server.broadcast "chat_channel", message: [@message.content, @message.user.email] 
    end

    private 
        def message_params
            params.require(:message).permit(:content)
        end
        
        def set_room
            @room = Room.find(params[:room_id])
        end
end
