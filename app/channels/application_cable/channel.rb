module ApplicationCable
  class Channel < ActionCable::Channel::Base
    def subscribed
    stream_from "chat_room_channel"
    end

    def unsubscribed
    end

    def send_message(data)
      current_user.messages.create(body: data['message'])
    end

  end
end
