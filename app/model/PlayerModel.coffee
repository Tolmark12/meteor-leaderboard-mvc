class PlayerModel extends Meteor.Collection

  constructor: () ->
    super("players")

  findOne : ( id ) ->
    # could add any custom functionality here
    super id
  


Players = new PlayerModel()