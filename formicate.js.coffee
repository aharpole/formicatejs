# former

# role = admi
# find $('.waiting') from haml file
# switchToInput()
  # div / span
# editable state
  # checks for callback on how to handle it
# onblur
  # validate?
  # as a callback?
# switchToSpan()

class Formicate
  constructor: (formElement, admin) ->
    @formElement = formElement
    @admin = admin
    @prepare @formElement
    
  verify: ->
    verified = new Verify @admin
    new Prepare @formElement unless !verified then throw 'not allowed'
  
  prepare: (@formElement) =>
    new Prepare @formElement
    
window.Formicate = Formicate