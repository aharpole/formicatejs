#= require 'libs/plugins/formicate/formicate.js.coffee'

# tie in jQuery plugin here

pluginName = 'formicate'

$.fn[pluginName] = (options) ->
    unless $.data @, pluginName
      $.data @, pluginName, new Formicate(@, options)