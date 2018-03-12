$(document).ready(function() {
    $("#side-menubar").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
        if($('#wrapper').hasClass('toggled')){
        	$('html').css('overflow','hidden');
        	$('#div1').addClass('inside');
        }else{
        	$('html').removeAttr('style');  
        	$('#div1').removeClass('inside')
        }
    });    
});
