$(document).ready ->

  $("#countdown").countdown("2017/08/02", (e)->
    $(".days").html(e.strftime('%D'))
    $(".hours").html(e.strftime('%H'))
    $(".minutes").html(e.strftime('%M'))
    $(".seconds").html(e.strftime('%S'))
  )