define [
  "chaplin/views/view",
  "text!templates/show.hbs",
  'chaplin/lib/helpers'
]
, (View, template, helpers)->
  'use strict'
  class HouseShowView extends View
    template: template
    container: '.row#container_for'
    autoRender: true
    containerMethod: 'html'
    initialize: ->
      $(".navbar-brand").click(@home)
#      @getTemplateFunction
#      console.log @template
#      @delegate "click", ".image", @show

#    getTemplateFunction: ->
#      template = $('#template-contact').html()
#      console.log template
    home: ->
      console.log 'home'
      helpers.redirectTo '/'