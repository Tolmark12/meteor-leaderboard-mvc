
if (Meteor.isClient) 

  # ----------- Template User Events:

  Template.main.events(
    'click input#incrament' : ->
      Players.update( Session.get("selected_player"), {$inc : {score : 5} } )
  )

  
  # ----------- Template accessors

  Template.main.selected_name = ->
    player = Players.findOne( Session.get("selected_player") )
    return player && player.name

  Template.main.players = ->
    return Players.find( {}, {sort: {score: -1, name: 1}} )
