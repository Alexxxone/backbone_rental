define [
  "chaplin/mediator",
  "models/user",
  "models/house",
  "models/houses"
]
, (mediator, User)->

  mediator.user = new User(window.current_user)
  mediator.images = {}
  mediator