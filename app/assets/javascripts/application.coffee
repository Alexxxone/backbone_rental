require [
  'chaplin/application',
  'routes',
  'chaplin/mediator',
  'chaplin/dispatcher',
  'chaplin/controllers/controller',
  'chaplin/composer',
  'chaplin/lib/composition',
  'chaplin/models/collection',
  'chaplin/models/model',
  'chaplin/views/layout',
  'chaplin/views/view',
  'chaplin/views/collection_view',
  'chaplin/lib/route',
  'chaplin/lib/router',
  'chaplin/lib/delayer',
  'chaplin/lib/event_broker',
  'chaplin/lib/helpers',
  'chaplin/lib/support',
  'chaplin/lib/sync_machine',
  'chaplin/lib/utils',
  'controllers/house_controller',
  'controllers/user_controller',
  'views/houses/index',
  'views/houses/show',
  'views/users/sign_in',
  'views/users/profile',
  'views/users/sign_up',
  'models/user',
  'models/house',
  'models/houses',
  'text',
  'mediator'
], (Application, routes)->
  'use strict'

  class BackboneApplication extends Application

    initialize: ->
      super routes: routes

  new BackboneApplication()




