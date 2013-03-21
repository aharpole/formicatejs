class HiddenInput
  constructor: ($span, inputValue) ->
    @span = $span
    @inputValue = inputValue
    @build @span, @inputValue
  
  build: (@span, @inputValue) =>
    
    $input = $('<input />').attr('type', 'hidden').attr('value', @inputValue).attr('name', @span.attr('name')).attr('id', @span.attr('name')) # straight ugly
    @span.after( $input )
    
window.HiddenInput = HiddenInput