define [
  "chaplin/views/view",
  "text!templates/show.hbs"
]
, (View, template)->
  'use strict'
  class HouseShowView extends View
    template: template
    autoRender: true
    initialize: ->
      console.log @model
#      @delegate "click", ".image", @show
#    show: ->
#      @model
