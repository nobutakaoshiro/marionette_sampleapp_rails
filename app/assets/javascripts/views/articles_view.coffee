define [
  'marionette'
  'views/article_view'
], (Marionette, ArticleView) ->

  class ArticlesView extends Marionette.CollectionView
    tagName: 'ul'
    className: 'articles-view'
    childView: ArticleView
