define [
  "chaplin/controllers/controller",
  "views/houses/index" ,
  "models/house",
  "models/houses",
  "views/houses/show"
]
, (Controller, IndexView,House,Houses,ShowView)->
  'use strict'
  class HouseController extends Controller
    index: ->
      console.log 'HouseController'
      houses = new Houses
      @view = new IndexView(collection: houses)
    show: ->
      console.log 'HouseController action SHOW'
      house = new House
      @view = new ShowView(model: house)
