class MessageChannel < ApplicationCable::Channel
  def subscribed
    sender_id = current_user.id
    receiver_id = params['receiver_id']
    channel_name = "chat_room_#{[sender_id, receiver_id].sort.join('_')}"
    stream_from channel_name
  end

  def unsubscribed
    # Any cleanup needed when the channel is unsubscribed
  end

  def send_message(data)
    message = Message.create(
      sender_id: current_user.id,
      receiver_id: data['receiver_id'],
      content: data['message']
    )

    sender_id = current_user.id
    receiver_id = data['receiver_id']
    channel_name = "chat_room_#{[sender_id, receiver_id].sort.join('_')}"
    ActionCable.server.broadcast(channel_name, message: data['message'], sender_id: sender_id, receiver_id: receiver_id)
  end
end
