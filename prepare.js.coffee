class Prepare
  constructor: ($form) ->
    @form ?= $form
    @gather()
  
  gather: =>
    @waiting = @form.find('.waiting')
    @waiting.each (i, e) =>
      @bind e
  
  bind: (waitingSpan) =>
    $(waitingSpan).on 'click', (e) ->
      new SwitchToInput @
      e.preventDefault()
    

window.Prepare = Prepare