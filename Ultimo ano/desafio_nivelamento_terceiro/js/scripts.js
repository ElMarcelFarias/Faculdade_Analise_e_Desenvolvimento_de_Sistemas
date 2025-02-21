// Importando todas as bibliotecas necessárias
// alert('marcel')
var path = window.location.pathname.includes('/pages/') ? '../js/' : 'js/';

document.write('<script src="'+path+'jquery-3.5.1.min.js"><\/script>');
document.write('<script src="'+path+'jquery.mask.min.js"><\/script>');
document.write('<script src="'+path+'bootstrap.bundle.min.js"><\/script>');
document.write('<script src="'+path+'jquery.easing.min.js"><\/script>');
document.write('<script src="'+path+'scrollspy.min.js"><\/script>');
document.write('<script src="'+path+'jquery.magnific-popup.min.js"><\/script>');
document.write('<script src="'+path+'magnific.init.js"><\/script>');
document.write('<script src="'+path+'jquery.mb.YTPlayer.min.js"><\/script>');
document.write('<script src="'+path+'owl.carousel.min.js"><\/script>');
document.write('<script src="'+path+'owl.init.js"><\/script>');
document.write('<script src="'+path+'aos.js"><\/script>');
document.write('<script src="'+path+'typed.js"><\/script>');
document.write('<script src="'+path+'typed.init.js"><\/script>');
document.write('<script src="'+path+'counter.init.js"><\/script>');
document.write('<script src="'+path+'parallax.js"><\/script>');
document.write('<script src="'+path+'feather.min.js"><\/script>');
document.write('<script src="'+path+'app.js"><\/script>');
document.write('<script src="'+path+'sweetalert2.js"><\/script>');
document.write('<script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>');


AOS.init({
    easing: 'ease-in-out-sine',
    duration: 1000
});

$(document).ready(function(){
    $("#btnNav").on("click", function(event){
        $("#navigation").css('position', 'relative'); 
        $("#navigation").toggle("fast", function() {
            if ($(this).is(":visible")) {
                $(".contact-nav").addClass('contact');
            } else {
                $(".contact-nav").removeClass('contact'); 
            }
        });
    });
});