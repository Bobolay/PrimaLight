#     M E N U

$document.on 'click', '.menu-btn, .close-menu', ->

  menu = $('.menu-wrap')
  
  if menu.hasClass('opened')
    menu.removeClass('opened')
    body.removeClass('hidden')
  else
    menu.addClass('opened')
    body.addClass('hidden')



#     T A B L E 

$document.on 'click', '.product-features-btn, .close-popup-btn.table', ->

  table = $('.table-wrap')

  if table.hasClass('visible')
    table.removeClass('visible')
    body.removeClass('hidden')
  else
    table.addClass('visible')
    body.addClass('hidden')



#     O R D E R     F O R M     P O P U P

$document.on 'click', '.order-btn, .close-popup-btn.order-form', ->

  order_popup = $('.order-wrap')

  if order_popup.hasClass('visible')
    order_popup.removeClass('visible')
    body.removeClass('hidden')
  else
    order_popup.addClass('visible')
    body.addClass('hidden')




#     S H A R E     P O P U P     W I N D O W

$document.on 'click', '.share-btn', ->

  share_window = $(this).next()

  if share_window.hasClass('visible')
    share_window.removeClass('visible')
    $(this).removeClass('active')
  else
    share_window.addClass('visible')
    $(this).addClass('active')

$.clickOut('.share-window',
  ()->
    $('.share-window').removeClass('visible')
    $('.share-btn').removeClass('active')
  {except: '.share-window, .share-btn'}
)