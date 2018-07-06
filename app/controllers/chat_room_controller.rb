class ChatRoomController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(:messages).find_by(id: params[:id])
  end
end
