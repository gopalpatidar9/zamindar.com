// app/javascript/channels/chat_channel.js

import consumer from "./consumer"

consumer.subscriptions.create("MessageChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the WebSocket for this channel
    // Update the chat interface with the new message (data.message)
  }
})
