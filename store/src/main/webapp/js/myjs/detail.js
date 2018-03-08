/**
 * 
 */
$(document).ready(function() {
	$('#userlogin').click(function() {
		window.open('../../pages/userLogin.jsp','會員登入畫面',config='height=480,width=600,menubar=no,left=660px,top=280px,resizable=no');
	});

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
	$('.js-collapsible').click(function(){
		$(this).toggleClass('closed');
	});
});
