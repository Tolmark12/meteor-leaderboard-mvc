if (Meteor.isClient) 

  # ----------- Events Handlers :

  Template.player.events(
    'click': ->
      Session.set "selected_player", this._id
  )


  # ----------- View Accessors :

  Template.player.selected = ->
    return if Session.equals("selected_player", this._id) then "selected" else ''
  