change_visibility = (status) ->
  if status == "Scheduled"
    $(".published-field").show()
  else
    $(".published-field").hide()

jQuery ->
  change_visibility $("#message_status :selected").text()
  $("#message_status").on "change", (e) ->
    change_visibility $(this).find(":selected").text()
