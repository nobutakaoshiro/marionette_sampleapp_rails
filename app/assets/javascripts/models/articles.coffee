define [
  'backbone'
  'models/article'
], (Backbone, Article) ->

  class Articles extends Backbone.Collection
    url: '/articles'
    model: Article
