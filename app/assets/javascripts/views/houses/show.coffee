define [
  "chaplin/views/view",
  "text!templates/show.hbs"
]
, (View, template)->
  'use strict'
  class HouseShowView extends View
    template: template
    container: '.row#container'
    autoRender: true
    containerMethod: 'html'
    initialize: ->
#      @getTemplateFunction
#      console.log @template
#      @delegate "click", ".image", @show

#    getTemplateFunction: ->
#      template = $('#template-contact').html()
#      console.log template
