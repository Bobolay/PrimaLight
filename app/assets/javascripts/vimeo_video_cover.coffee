$document.on 'click', '.video-wrap', ()->

    target_holder = $(this).find('.video')
    target_iframe = $(this).find('iframe')
    target_cover = $(this).find('.video-cover')
    

    videoURL = target_iframe.attr('src')

    target_iframe.attr('src',videoURL+'?autoplay=1')
    target_cover.addClass('hidden')
    target_holder.addClass('playing')