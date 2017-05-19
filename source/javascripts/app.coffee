window.mainPage = () ->
  $('#mms-advantages-carousel').carousel({
    interval: false
  })

  $('#mms-advantages-carousel').on 'slid.bs.carousel', ->
    $('.mms-advantages-carousel-body-container .hide-mms-advantages-carousel').hide()
    $('.mms-advantages-carousel-body-container #content-'+$(this).find('.active').data('slide-no')).show()

  $('#mms-advantages-second-carousel').carousel({
    interval: false
  })

  $('#mms-advantages-second-carousel').on 'slid.bs.carousel', ->
    $('.mms-advantages-second-carousel-body-container .hide-mms-advantages-second-carousel').hide()
    $('.mms-advantages-second-carousel-body-container #content-'+$(this).find('.active').data('slide-no')).show()

  $('#how-it-works-carousel').carousel({
    interval: false
  })

  $('#how-it-works-carousel').on 'slid.bs.carousel', ->
    $('.how-it-works-carousel-body-container .hide-how-it-works-carousel').hide()
    $('.how-it-works-carousel-body-container #content-'+$(this).find('.active').data('slide-no')).show()