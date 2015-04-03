define [
  'marionette'
  'models/articles'
  'views/articles_view'
], (Marionette, Articles, ArticlesView) ->

  class AppRouter extends Marionette.AppRouter

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
