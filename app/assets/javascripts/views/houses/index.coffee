define [
  "chaplin/views/collection_view",
  "text!templates/index.hbs",
  'views/houses/item_index',
#  'chaplin/mediator'
  'chaplin/lib/helpers'

]
, (CollectionView, template, ItemIndexView,mediator)->
  'use strict'
  class HouseIndexView extends CollectionView
    @.$el = template
    tagName: 'ul'
    className: 'row'
    template: template
    itemView: ItemIndexView
    container: '.row#container'
    autoRender: true
    containerMethod: 'html'
    initialize: ->
      super
      $(".navbar-brand").click(@home)
    home: ->
      console.log 'home'
#      redirectTo('house#index')
#      !router:'house#index'
#      mediator.execute 'router:route', ''
      mediator.redirectTo '/'
#      Backbone.history.navigate "/", { trigger: true,replace: true }



