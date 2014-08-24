# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

$ ->
  console.log "Hello"
  $(".new_registration").submit (e) ->
    e.preventDefault()
    form = $(this)
    console.log "YOLO"
    console.log $(this)
    $.ajax(
      type: 'POST'
      url: form.attr( "action" )
      data: form.serialize()
    ).done( (data) ->
      form.hide()
      form.after("<p class='signed_up'>Takk for at du meldte deg på, hvis du blir trukket ut til å få spille får du nærmere beskjed!</p>")
    ).error( (jqXHR, textStatus, errorThrown) ->
      if jqXHR.status == 400
        console.log "400 feil"
        data = $.parseJSON(jqXHR.responseText)
        console.log data
        for key of data.error
          console.log $('#registration_' + key)
          $('#registration_' + key).addClass('error')
          $('#registration_' + key).before('<label class="error">' + data.error[key] + '</label>')
      else
        console.log "Veldig feil"
    )
  # $('.btn').on 'click', (e) ->
  #   e.preventDefault();
  #   $.ajax(
  #     type: "POST"
  #     url:
  #     data: data
  #   ).done((data) ->
  #     $('.timeout-error').addClass('hidden')
