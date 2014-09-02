# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

$ ->
  $(".new_registration").submit (e) ->
    e.preventDefault()
    $('.form-row input').removeClass('error');
    $('.form-row label.error').remove();
    form = $(this)
    $.ajax(
      type: 'POST'
      url: form.attr( "action" )
      data: form.serialize()
    ).done( (data) ->
      form.hide()
      form.after("<p class='signed_up'>Takk for din påmelding. Ved stor interesse blir vi nødt til å trekke tilfeldig fra påmeldingslisten. De som får spille får en SMS en time før runden starter. Vennligst følg med på mobilen og møt opp i god tid før runden starter. Vi sees på JavaZone!</p>")
    ).error( (jqXHR, textStatus, errorThrown) ->
      if jqXHR.status == 400
        data = $.parseJSON(jqXHR.responseText)
        for key of data.error
          $('#registration_' + key).addClass('error')
          $('#registration_' + key).parent().children().last().after('<label class="error">' + data.error[key] + '</label>')
      else
        console.log "FEILET"
    )
