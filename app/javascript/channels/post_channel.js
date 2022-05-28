import consumer from "./consumer"
import ClearInputPost from "../packs/clear_inputs_post"

consumer.subscriptions.create("PostChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const { title, body } = data.post[0];
    $('.posts-section').append("<p>" + title + "<br>" + body + "<br>" + "Author: <small><strong>" + data.post[1] +"</strong></small></p>");
    ClearInputPost();
  }
});
