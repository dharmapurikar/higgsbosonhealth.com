// This is where it all goes :)
//= require jquery
//= require bootstrap-sprockets
//= require 'jquery.easing.min.js'

$(document).ready(function() {
    $(window).scroll(function() {
        console.log($(".navbar").offset().top)
        if ($(".navbar").offset().top > 50) {
            $(".navbar-fixed-top").addClass("top-nav-collapse");
        } else {
            $(".navbar-fixed-top").removeClass("top-nav-collapse");
        }
    });

    $(function() {
        $(document).on('click', 'a.page-scroll', function(event) {
            var $anchor = $(this);
            if ($(this).attr("id") == "contact_us"){
                $("html, body").animate({ scrollTop: $(document).height()-$(window).height() });
            } else {
                $('html, body').stop().animate({
                    scrollTop: $($anchor.attr('href')).offset().top
                }, 1500, 'easeInOutExpo');
            }

            event.preventDefault();
        });
    });

});

