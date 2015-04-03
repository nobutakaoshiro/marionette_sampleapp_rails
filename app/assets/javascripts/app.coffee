define [
  'marionette'
  'app_router'
], (Marionette, AppRouter) ->

  class App extends Marionette.Application
    regions:
      appHeader: '#appHeader'
      appBody:   '#appBody'
      appFooter: '#appFooter'

    initialize: (options) ->
      super(options)
      @appRouter = new AppRouter app: @
      Backbone.history.start()

    onStart: ->