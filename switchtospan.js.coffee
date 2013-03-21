class SwitchToSpan
  constructor: ($input, $span) ->
    @input = $input
    @span = $span
    @build @input, @span
    
  build: (@input, @span) =>
    @span.empty().html @input.val()
    @hiddeninput @span, @input.val()
    @replace @input, @span
  
  bind: ($span) =>
    prepare = new Prepare $('#new_opportunity') if $('#new_opportunity')
    prepare = new Prepare $('.edit_opportunity') if $('.edit_opportunity')
    # prepare.bind $span
  
  hiddeninput: ($span, $inputValue) =>
    new HiddenInput $span, $inputValue
  
  replace: (@input, @span) =>
    @input.replaceWith @span
    @bind @span

window.SwitchToSpan = SwitchToSpan