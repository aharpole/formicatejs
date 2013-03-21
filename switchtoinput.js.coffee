class SwitchToInput
  constructor: (span) ->
    @span = $(span)
    @build @span

  bind: ($input, $span) =>
    $input.on
      'change': (e) ->
        new Editable $(@)
        e.preventDefault()
      'blur': (e) ->
        new SwitchToSpan $(@), $span
        e.preventDefault()

  build: (@span) =>
    $input = $('<input />').attr('type', 'text').attr('value', @span.text())
    @span.replaceWith( $input )
    @focus $input
    @bind $input, @span

  focus: ($input) =>
    $input.focus()
    
window.SwitchToInput = SwitchToInput