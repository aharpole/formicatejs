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
    prepare = new Prepare $('#your_form_object') if $('#your_form_object')
    # prepare.bind $span
  
  hiddeninput: ($span, $inputValue) =>
    new HiddenInput $span, $inputValue
  
  replace: (@input, @span) =>
    @input.replaceWith @span
    @bind @span

window.SwitchToSpan = SwitchToSpan