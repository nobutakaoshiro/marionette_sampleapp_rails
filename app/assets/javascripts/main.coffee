#= require hamlcoffee

require [
  'app'
], (App) ->

  $ ->
    app = new App()
    app.start()


