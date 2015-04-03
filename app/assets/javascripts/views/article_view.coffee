define [
  'marionette'
  'templates/article_view_template'
], (Mariontte) ->

  class ArticleView extends Marionette.ItemView
    tagName: 'li'
    className: 'article-view'
    template: JST['article_view_template']
    events:
      'click [data-action=delete]' : 'delete'

    delete: (event) ->
      @model.destroy()
