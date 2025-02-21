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