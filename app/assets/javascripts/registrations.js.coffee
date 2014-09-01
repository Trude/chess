# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

$ ->
  console.log "Hello"
  $(".new_registration").submit (e) ->
    e.preventDefault()
    $('.form-row input').removeClass('error');
    $('.form-row label.error').remove();
    form = $(this)
    console.log "YOLO"
    console.log $(this)
    $.ajax(
      type: 'POST'
      url: form.attr( "action" )
      data: form.serialize()
    ).done( (data) ->
      form.hide()
      form.after("<p class='signed_up'>Takk for din påmelding. Ved stor interesse blir vi nødt til å trekke tilfeldig fra påmeldingslisten. De som får spille får en SMS en time før runden starter. Vennligst følg med på mobilen og møt opp i god tid før runden starter. Vi sees på JavaZone!</p>")
    ).error( (jqXHR, textStatus, errorThrown) ->
      if jqXHR.status == 400
        console.log "400 feil"
        data = $.parseJSON(jqXHR.responseText)
        console.log data
        for key of data.error
          console.log $('#registration_' + key)
          $('#registration_' + key).addClass('error')
          $('#registration_' + key).after('<label class="error">' + data.error[key] + '</label>')
      else
        console.log "Veldig feil"
        console.log jqXHR
        console.log textStatus
        console.log errorThrown
    )
