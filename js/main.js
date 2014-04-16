
$(document).foundation();

$(document).ready(function(){

 /* Load slider on index */
    $('.main-slider').bxSlider({
        controls: false,
        auto: true,
        onSlideBefore: function($slideElement){
            var color = $slideElement.data('color');
            $('.slider-bar').animate({
                    backgroundColor: color
                },
                'slow'
            );
        }
    });

/* Load slider on articles */
    if ($('.article-slider li').length > 1){
        $('.article-slider').bxSlider({
            controls: false,
            auto: true,
            autoHidePager: true
        });
    }

/* Load slider on gallery */
    $('.gallery-bxslider').bxSlider({
        captions: true,
        pager: false
    });
    $('.albums-bxslider').bxSlider({
        minSlides: 5,
        maxSlides: 5,
        slideWidth: 254,
        slideMargin: 0,
        nextSelector: '.albums-navigation .albums-next',
        prevSelector: '.albums-navigation .albums-prev',
        nextText: '',
        prevText: ''
    });

/* Animate colors on index slider */


});