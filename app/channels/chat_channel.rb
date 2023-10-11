class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    sender = current_user.email # Customize this based on your authentication
    content = data['content']
    Chat.create!(sender: sender, content: content)
  end
end
