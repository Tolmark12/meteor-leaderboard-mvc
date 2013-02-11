
if (Meteor.isClient) 

  view = Template.main

  # ----------- Events handlers :

  view.events(
    'click input#incrament' : ->
      Players.update( Session.get("selected_player"), {$inc : {score : 5} } )
  )

  
  # ----------- View accessors :

  view.selected_name = ->
    player = Players.findOne( Session.get("selected_player") )
    return player && player.name

  view.players = ->
    return Players.find( {}, {sort: {score: -1, name: 1}} )
