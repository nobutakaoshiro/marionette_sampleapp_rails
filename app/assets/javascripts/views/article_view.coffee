#= require templates/article_view_template

class @ArticleView extends Backbone.Marionette.ItemView
  tagName: 'li'
  className: 'article-view'
  template: JST['article_view_template']
  events:
    'click [data-action=delete]' : 'delete'

  delete: (event) ->
    @model.destroy()
