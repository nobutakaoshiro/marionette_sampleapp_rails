define [
  'marionette'
  'templates/article_view_template'
], (Mariontte, ArticleViewTemplate) ->

  class ArticleView extends Marionette.ItemView
    tagName: 'li'
    className: 'article-view'
    template: ArticleViewTemplate
    bindings:
      '[data-binding=title]'   : 'title'
      '[data-binding=content]' : 'content'

    events:
      'click [data-action=delete]' : 'delete'
      'click [data-action=update] ' : 'update'

    delete: (event) ->
      @model.destroy()

    onRender: ->
      @stickit()

    update: ->
      @model.save attrs,
        success: =>
          @render()
        error: =>
          alert "Error!"

