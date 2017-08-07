$(document).ready ->

  $('.main-banner-wrapper .banner-description-block').first().addClass('visible')

  $textillated = $('.textillate')
  $textillated.each(->
    $(this).html($(this).attr('data-html'))
  )

  flash_banner_titles = (slide)->
    $slide = $('.banner-description-block').eq(slide)
    already_initialized = $slide.hasClass("textillate-initialized")
 
    $slide.find('.textillate span').each(
      (k,v)->
        separate_word = $(this)
        anim_delay = 1000
        if already_initialized
          v = 'start'
        else
          v = {
            in: {
              effect: 'flash',
              shuffle: true,
              delay: 25,
            },
          }
        separate_word.textillate(v)
    )
    $slide.addClass("textillate-initialized")
   

  #     M A I N     B A N N E R     S L I D E R

  banner_slider = $('.banner-slider').bxSlider
    controls: false
    pager: false
    speed: 750
    pause: 5000
    auto: true
    onSliderLoad: (currentIndex)->
      flash_banner_titles(0)
    onSlideBefore: ($slideElement, oldIndex, newIndex)->
      $('.progress-bar').removeClass('animate')
      setTimeout (->
        $('.progress-bar').addClass('animate')
      ), 50
      $('.current-slide').text('0'+(banner_slider.getCurrentSlide()+1))
      current = banner_slider.getCurrentSlide()
      $('.main-banner-wrapper .img-bg').removeClass('visible')
      $('.main-banner-wrapper .img-bg').eq(current).addClass('visible')
      $('.main-banner-wrapper .banner-description-block').removeClass('visible')
      $('.main-banner-wrapper .banner-description-block').eq(current).addClass('visible')
      flash_banner_titles(current)
  if banner_slider.getSlideCount
    $('.total-slide').text('0'+(banner_slider.getSlideCount()))
  $('.main-banner-wrapper .slider-prev').click ->
    current = banner_slider.getCurrentSlide()
    banner_slider.goToPrevSlide()
  $('.main-banner-wrapper .slider-next').click ->
    current = banner_slider.getCurrentSlide()
    banner_slider.goToNextSlide()



  #    S M A R T     A S S E S     S L I D E R

  smart_asses_slider = $('.smart-asses-slider').bxSlider
    controls: false
    pager: false
    speed: 750
    pause: 10000
    auto: true
    onSlideBefore: ($slideElement, oldIndex, newIndex)->
      current = smart_asses_slider.getCurrentSlide()
      $slideElement.find(".textillate").textillate("in")
      $('.smart-asses-wrapper .slide-text-container').removeClass('visible')
      $('.smart-asses-wrapper .slide-text-container').eq(current).addClass('visible')
  $('.smart-asses-wrapper .slider-prev').click ->
    current = smart_asses_slider.getCurrentSlide()
    smart_asses_slider.goToPrevSlide()
  $('.smart-asses-wrapper .slider-next').click ->
    current = smart_asses_slider.getCurrentSlide()
    smart_asses_slider.goToNextSlide()