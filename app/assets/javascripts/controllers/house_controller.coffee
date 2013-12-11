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
      @houses = new Houses()
      errorCallback = (collection, xhr)->
        console.log 'ERROR CALLBACK'
#        new Alerts message: xhr
      @houses.fetch error: errorCallback
      @houses.fetch success: succ

      succ =()->
      @view = new IndexView collection: @houses
    show: ->
      console.log 'HouseController action SHOW'
      house = new House(id: window.location.href.split('/')[4])

      house.fetch success: (model)->
        @view = new ShowView(model: model)
#
#var Image = Backbone.Model.extend({
#  idAttribute: 'gallery_id'
#});
#
#// Create the image collection
#var ImageCollection = Backbone.Collection.extend({
#  model: Image,
#  url: '/gallery'
#});
#//create image view
#        var ImageView = Backbone.View.extend({
#            tagName: 'li',
#            className:'image-frame',
#            element:'',
#            template: _.template($('#image_template').html()),
#            events: {
#              "click .delete" : "deletePicture",
#              "click .primary": "setAsPrimary"
#            },
#            initialize: function () {
#              _.bindAll(this);
#              this.model.bind('change', this.render);
#              this.model.view = this;
#              this.collection=this.model.collection;
#              this.render();
#            },
#            render: function () {
#
#              this.element=$(this.el).html(this.template(this.model.toJSON()));
#              addActions(this.element);
#              return this;
#            },
#            deletePicture: function() {
#                var el = this.el;
#                this.model.destroy({
#                    success: function () {
#                        $(el).remove();
#                    }
#                });
#            },
#            setAsPrimary: function() {
#              this.collection.each(function (item) {
#                 if(item.get('is_primary')==1){
#                    item.set({is_primary:0});
#                    item.save({is_primary:0});
#                    item.change();
#
#                 }
#              });
#              this.model.set({is_primary:1});
#              this.model.save({is_primary:1});
#              this.render();
#
#            }
#
#        });
#        //create images view
#        var ImageCollectionView = Backbone.View.extend({
#            initialize: function () {
#              _.bindAll(this);
#              var self = this;
#              this.collection.bind('add', function(m){
#                  var container=new ImageView({ model: m }).render().el;
#                  self.$el.append(container);
#              });
#              this.render();
#            },
#            render: function () {
#              var self = this;
#              this.$el.html("");
#              //console.log(this.collection);
#              this.collection.each(function (item) {
#                  self.$el.append(new ImageView({ model: item }).render().el);
#              });
#              return this;
#            }
#        });
#Initialize the collection
#images = new ImageCollection();
#images.fetch({success:function(){
#  var Gallery = new ImageCollectionView({
#    collection : images,
#    el: $("#image_gallery")
#  });
#  Gallery.render();
#
#}
#});
#
#
#
#
#
#<script type="text/template" id="image_template">
#<% if(status=='approved'){ %>
#  <img class="<% if(is_primary==1){print('primary_image')}else if(can_be_primary==1&&is_primary!=1){print('can_be_primary_image')} %>" src="<%=external_path%><% if(thumb){print(thumb)}else{print(filename)} %>" alt="<%=description%>" width="200" height="160">
#<% }else if(status=='denied'){ %>
#  <div style="background-color:#fff;width:200px;height:160px;margin-top:5px;margin-left: 5px;position: absolute;opacity:.8">
#  <span style="margin-left:80px;margin-top: 60px;color:#ff0000;font-weight: bold;position: absolute">Denied</span>
#        </div>
#  <img style="border:1px solid #ff0000;" src="<%=external_path%><% if(thumb){print(thumb)}else{print(filename)} %>" alt="<%=description%>" width="200" height="160">
#<% }else if(status=='pending'){ %>
#  <div style="background-color:#fff;width:200px;height:160px;margin-top:5px;margin-left: 5px;position: absolute;opacity:.8">
#  <span style="margin-left:80px;margin-top: 60px;font-weight: bold;position: absolute">Pending</span>
#        </div>
#  <img src="<%=external_path%><% if(thumb){print(thumb)}else{print(filename)} %>" alt="<%=description%>" width="200" height="160">
#
#<% } %>
#<ul class="image-actions">
#<% if(can_be_primary==1&&is_primary!=1){%>
#<li class="primary"><a href="#">Set as Primary</a></li>
#<%}%>
#<li class="view"><a href="<%=external_path%><%=filename%>" class="lightbox">View</a></li>
#<% if(is_primary!=1){%>
#<li class="delete"><a href="#">Delete</a></li>
#<%}%>
#</ul>
#</script>