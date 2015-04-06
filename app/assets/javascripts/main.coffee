#= require hamlcoffee

require [
  'app'
], (App) ->

  $ ->
    app = new App()
    app.start()

   $.ajaxSetup headers:
     'X-CSRF-Token': $('meta[name="csrf-token"]').attr 'content'



