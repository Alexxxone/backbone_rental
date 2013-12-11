define [
  "chaplin/views/collection_view",
  "text!templates/index.hbs",
  'views/houses/item_index',
  'chaplin/lib/helpers'

]
, (CollectionView, template, ItemIndexView,mediator)->
  'use strict'
  class HouseIndexView extends CollectionView
    template: template
    itemView: ItemIndexView
    container: '.row#container'
    autoRender: true
    renderItems: true
    containerMethod: 'html'
#    listSelector: '#index_content'
    loadingSelector: '.spinner'
    initialize: ->
      super
#      temp = $('#tmpl').html()
      $(".navbar-brand").click(@home)
#      template1 = Handlebars.compile(temp)
      console.log $(template).find('#tmpl')
    home: ->
      mediator.redirectTo '/'
    render: ->
      super



