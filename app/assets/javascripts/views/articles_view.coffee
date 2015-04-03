#= require views/article_view

ArticleView = @ArticleView

class @ArticlesView extends Backbone.Marionette.CollectionView
  tagName: 'ul'
  className: 'articles-view'
  childView: ArticleView
