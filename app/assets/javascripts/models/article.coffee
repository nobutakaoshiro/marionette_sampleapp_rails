define [
  'backbone'
], (Backbone) ->

  class Article extends Backbone.Model
    urlRoot: '/articles'