
# Seed the db if it's empty : 

if (Meteor.isServer) 
  Meteor.startup ->

    # Uncomment to clear the database
    # Players.remove({})

    if Players.find().count() == 0 

      names = [
        "Ada Lovelace"
        "Grace Hopper"
        "Marie Curie"
        "Carl Friedrich Gauss"
        "Nikola Tesla"
        "Claude Shannon"
      ]

      for i in [0...names.length]
        Players.insert
          name: names[i]
          score: Math.floor(Math.random()*10)*5
        