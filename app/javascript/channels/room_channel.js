import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('#message_holder').append('<div class="row"><p>'+data.sender_id +'</p>:<p>'+ data.content+'</p></div>')
    // Called when there's incoming data on the websocket for this channel
  }
});
