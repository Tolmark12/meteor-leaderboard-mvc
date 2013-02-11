
if (Meteor.isClient) 

  # app/view/player.html
  view = Template.player

  # ----------- Events Handlers :

  view.events(
    'click': ->
      Session.set "selected_player", this._id
  )


  # ----------- View Accessors :

  view.selected = ->
    return if Session.equals("selected_player", this._id) then "selected" else ''
  