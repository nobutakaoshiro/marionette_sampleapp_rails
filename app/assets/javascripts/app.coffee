#= require app_router

AppRouter = @AppRouter

class @App extends Backbone.Marionette.Application
  regions:
    appHeader: '#appHeader'
    appBody:   '#appBody'
    appFooter: '#appFooter'

  initialize: (options) ->
    super(options)
    @appRouter = new AppRouter app: @
    Backbone.history.start()

  onStart: ->