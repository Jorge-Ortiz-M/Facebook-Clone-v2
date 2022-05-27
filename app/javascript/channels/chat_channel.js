import consumer from "./consumer"
import ClearInput from "../packs/clear_input"

consumer.subscriptions.create("ChatChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('.messages-room').append("<p><b>" + data.message[1] + "</b>: " + data.message[0]);
    ClearInput();
  }
});
