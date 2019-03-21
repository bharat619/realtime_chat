App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    $("#message-container").append(data.message)
    scroll_bottom()