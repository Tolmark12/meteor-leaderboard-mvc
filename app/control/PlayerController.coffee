if (Meteor.isClient) 

  # ----------- Template User Events:

  Template.player.events(
    'click': ->
      Session.set "selected_player", this._id
  )


  # ----------- Template accessors

  Template.player.selected = ->
    return if Session.equals("selected_player", this._id) then "selected" else ''
  