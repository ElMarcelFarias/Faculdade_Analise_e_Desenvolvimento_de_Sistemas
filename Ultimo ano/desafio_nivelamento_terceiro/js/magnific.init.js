//Cta Video
$('.video-play-icon').magnificPopup({
    disableOn: 375,
    type: 'iframe',
    iframe: {
        markup: '<div class="mfp-iframe-scaler">'+
                  '<div class="mfp-close"></div>'+
                  '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>'+
                '</div>', // HTML markup of popup, `mfp-close` will be replaced by the close button
      
        patterns: {
          youtube: {
            index: 'youtube.com/', 
            id: 'v=', 
            src: 'https://www.youtube.com/embed/%id%?autoplay=1' // Para utilizar a biblioteca Magnific Popup colocar o https: antes para rodar. 
          },
          vimeo: {
            index: 'vimeo.com/',
            id: '/',
            src: '//player.vimeo.com/video/%id%?autoplay=1'
          },
          gmaps: {
            index: '//maps.google.',
            src: '%id%&output=embed'
          }
      
          // you may add here more sources
      
        },
      
        srcAction: 'iframe_src', // Templating object key. First part defines CSS selector, second attribute. "iframe_src" means: find "iframe" and set attribute "src".
    },
    mainClass: 'mfp-fade',
    removalDelay: 160,
    preloader: false,
    fixedContentPos: false,
});

