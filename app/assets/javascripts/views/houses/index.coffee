define [
  "chaplin/views/collection_view",
  "text!templates/index.hbs",
  'views/houses/item_index',
  'chaplin/lib/helpers'

]
, (CollectionView, template, ItemIndexView,helpers)->
  'use strict'
  class HouseIndexView extends CollectionView

    template: template
    itemView: ItemIndexView
    container: '#container_for'
    autoRender: false
    containerMethod: 'html'
    listSelector: '#index_content'
    loadingSelector: '.spinner'
    animationStartClass: 'start'
    animationEndClass: 'stop'
    _templatePath: "templates/index"
    initialize: ->
      super
      $(".navbar-brand").click(@home)
      console.log @template
#      @rendera()

    home: ->
      console.log 'home'
      helpers.redirectTo '/'

#    rendera: ->
#      $(@el).prepend(@template)




