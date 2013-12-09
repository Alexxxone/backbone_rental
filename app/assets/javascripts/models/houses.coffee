define [
  "chaplin/models/collection"
  "models/house"
]
, (Collection,House) ->
  'use strict'
  class Houses extends Collection
    model : House,
    url: '/'
