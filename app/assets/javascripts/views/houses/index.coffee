define [
  "chaplin/views/view",
  "text!templates/index.hbs",
  "models/houses",
  "text!templates/indexView.hbs",
]
, (View, template, Houses, template2)->
  class HouseItemView extends View
    tagName: 'li'
    className: 'house-box'
    template: template2
    autoRender: true
    initialize: ->
      @delegate "click", "img.image", @show
    show: ->
      id =@model.attributes.id
      console.log id
      Backbone.history.navigate "/houses/#{id}", { trigger: true, replace: true}
  class HouseIndexView extends HouseItemView
    tagName: 'ul'
    className: 'row'
    template: template
    container: '#container'
    initialize: ->
      @collection.bind('reset',@render)
      @collection.fetch success: (collection) ->
        render(collection)
    render =(collection)->
      collection.each (val) ->
        view = new HouseItemView({model: val,collection :collection})
        $(@container).find('ul').append(view.render().el)
