#= require models/articles
#= require views/articles_view

Articles = @Articles
ArticlesView = @ArticlesView

class @AppRouter extends Backbone.Marionette.AppRouter

  initialize: (options) ->
    @app = options.app

  routes:
    "/articles(/)" : "showArticles"
    "(/)" : "showArticles"

  showArticles: ->
    @articles = new Articles
    @articlesView = new ArticlesView collection: @articles
    @app.appBody.show(@articlesView)
    @articles.fetch()
