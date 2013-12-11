define [
  "chaplin/views/view",
  "text!templates/indexView.hbs"
]
, (View, template )->
  'use strict'
  class HouseItemView extends View
    tagName: 'li'
    className: 'house-box'
    template: template
    container: '#index_content'
    autoRender: false
    initialize: ->
      @model.on 'change', () ->
        throw_alert('Values for this model have changed.')
      @model.on 'destroy', () ->
        throw_alert('House was Successfully Deleted')
      @delegate "click", "img.image", @show
      @delegate "click", ".house_change", @changes
      @delegate "click", ".delete", @destroy
    show: ->
      id = @model.attributes.id
      console.log id
      Backbone.history.navigate "/houses/#{id}", { trigger: true,replace: true }
    changes: ->
      @model.set(title: 'changed')
    destroy: ->
      @model.destroy success: ->
        console.log 'deleted'



    throw_alert=(text)->
      console.log 'throw_alert'
      $.gritter.add
        title: 'Atention!'
        text: text