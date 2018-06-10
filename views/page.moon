import Widget from require 'lapis.html'

class Page extends Widget
  sidebar_link: (key, label, isExample) =>
    li class: { 'disabled', active: key == @page }, ['data-key']: key, ['data-example']: isExample and key, ->
      text label\gsub('_', ' ') or ''

  sidebar: =>
    div class: 'sidebar', ->
      input class: 'search'

      aside class: 'alias-message'

      @sidebar_content!

    div class: 'sidebar-toggle', ->
      span class: 'arrow'
