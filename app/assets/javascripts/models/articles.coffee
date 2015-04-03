#= require models/article

Article = @Article

class @Articles extends Backbone.Collection
  url: '/articles'
  model: Article
