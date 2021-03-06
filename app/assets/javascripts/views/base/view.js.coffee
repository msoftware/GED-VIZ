define [
  'chaplin'
  # Just load the view helpers, no return value
  'lib/view_helper'
], (Chaplin) ->
  'use strict'

  class View extends Chaplin.View

    getTemplateFunction: ->
      templateFunction = JST[@templateName]
      if typeof @templateName is 'string' and typeof templateFunction isnt 'function'
        throw new Error "View template #{@templateName} not found"
      templateFunction
