// app/javascript/channels/flat_rental_chat.js

import consumer from "channels/consumer"

consumer.subscriptions.create({ channel: "MessageChannel", flat_rental_id: flat_rental_id }, {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the WebSocket for this channel

    // Extract the message and other data from the received message
    const message = data.message;
    const senderId = data.sender_id;

    // Create a new message element and append it to the chat container
    const chatMessages = document.getElementById("chat-messages");
    const messageElement = document.createElement("div");
    messageElement.textContent = `User ${senderId}: ${message}`;
    chatMessages.appendChild(messageElement);
  }
})
