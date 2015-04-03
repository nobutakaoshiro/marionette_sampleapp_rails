#= require_tree ./templates

class Article extends Backbone.Model
  urlRoot: '/articles'

class Articles extends Backbone.Collection
  url: '/articles'
  model: Article

class ArticleView extends Backbone.Marionette.ItemView
  tagName: 'li'
  className: 'article-view'
  template: JST['article_view_template']

class ArticlesView extends Backbone.Marionette.CollectionView
  tagName: 'ul'
  className: 'articles-view'
  childView: ArticleView

class App extends Backbone.Marionette.Application
  regions:
    appHeader: '#appHeader'
    appBody:   '#appBody'
    appFooter: '#appFooter'

  onStart: ->
    @appBody.$el.html('app started!')
    articles = new Articles
    articles.fetch
      success: (collection) =>
        @articlesView = new ArticlesView collection: collection
        @appBody.show(@articlesView)

$ ->
  app = new App()
  app.start()

