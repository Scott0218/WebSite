<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Scott">

<!-- Bootstrap core CSS -->
<link href="<%= request.getContextPath() %>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%= request.getContextPath() %>/css/business-casual.min.css" rel="stylesheet">

<!-- 通用css -->
<link href="<%= request.getContextPath() %>/css/current.css" rel="stylesheet">
<title>Gaming 會員登入</title>
<script type="text/javascript" src="//connect.facebook.net/en_US/sdk.js"></script>
</head>
<body>
<div id="div1">
	<h1 class="site-heading text-center text-white d-none d-lg-block">
		<span class="site-heading-upper text-primary mb-3">My Gaming
			Store</span> <span class="site-heading-lower">Welcome Shopping</span>
	</h1>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
	<div class="container">
		<a
			class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none"
			href="#">Gaming Shopping</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav mx-auto">
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded"
					href="<%= request.getContextPath() %>/pages/index.jsp">鍵盤 <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded"
					href="<%= request.getContextPath() %>/pages/mouse.jsp">滑鼠</a></li>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded"
					href="<%= request.getContextPath() %>/pages/headset.jsp">耳機</a></li>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded" href="<%= request.getContextPath() %>/pages/contact.jsp">聯絡我們</a></li>
			</ul>
			<ul class="navbar-nav navbar-right">
				<li class="nav-item active px-lg-4"><a
					class="nav-link text-uppercase text-expanded" id="userlogin" href="#">會員登入<i class="fa fa-user-o"
						style="font-size: 28px"></i></a></li>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded" href="#" id="side-menubar">購物車<i
						class="fa fa-shopping-cart" style="font-size: 28px"></i></a></li>
			</ul>
		</div>
	</div>
	</nav>
	<%--登入 --%>
	<div id="memberBox">
		<div class="title">
			<h1 class="text-center text-primary">Gaming 會員登入</h1>
		</div>
		<div class="container">
			<form action="<c:url value="/id"/>" method="post" id="UserLoginForm">
				<div class="text-left text-dark" id="memberinput">
					<div class="form-group">
						<label>會員帳號</label> <input class="form-control" id="userId" name="userId"
							type="text" required="" placeholder="請輸入會員帳號" maxlength="10">
						<p class="help-block text-danger" id="erroruid"></p>
					</div>
					<div class="form-group">
						<label>會員密碼</label> <input class="form-control" id="userPwd" name="userPwd"
							type="password" maxlength="10">
						<p class="help-block text-danger" id="errorpwd"></p>
					</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input" id="chk1">
							<label class="form-check-label">記住密碼</label>
						</div>
							<a href="<%= request.getContextPath() %>/pages/forgetPwd.jsp" class="btn btn-link pull-right">忘記密碼</a>
					<div>
						<button class="btn btn-primary btn-block" type="submit" id="btn1">Gaming 會員登入</button>
					</div>
					<br />
					<div id="fb-root"></div>
					<button id="FBLogin" class="btn btn-success btn-block"
						type="button">facebook 登入</button>
				</div>
			</form>
		</div>
	</div>
	
	
	<%--footer --%>
	<footer class="footer text-faded text-center py-5" id="Errorfooter" >
	<div class="container">
		<p class="m-0 small">Copyright &copy; My Website In Jsp 2018</p>
	</div>
	</footer>
</div>
	 <!-- RigthSideNav -->
	<div id="wrapper">
        <div id="sidebar-wrapper">
        	<div class="container">
	        	<h1 class="text-left text-primary y-2">購物車<small>(商品)</small></h1>
	        	<p class="text-center py-2">您的購物車尚無商品</p>
	            <a href="<%= request.getContextPath() %>/pages/index.jsp"><button type="button" class="btn btn-info btn-block">開始購物</button></a>
            </div>
        </div>
    </div>
	<!-- Bootstrap core JavaScript -->
	<script src="<%= request.getContextPath() %>/vendor/jquery/jquery.min.js"></script>
	<script src="<%= request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>
	<!-- 通用JS -->
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/myjs/global.js"></script>
	<script>
		$(document).ready(function(){
		    var remember = $.cookie('remember');
		    if (remember == 'true') {
		        var username = $.cookie('username');
		        var password = $.cookie('password');
		        // autofill the fields
		        $('#userId').val(username);
		        $('#userPwd').val(password);
		    	$('#chk1').attr('checked',true);
		    }
		   
		    $("#UserLoginForm").submit(function() {
		        if ($('#chk1').is(':checked')) {
		            var username = $('#userId').val();
		            var password = $('#userPwd').val();

		            // set cookies to expire in 14 days
		            $.cookie('username', username, { expires: 5 });
		            $.cookie('password', password, { expires: 5 });
		            $.cookie('remember', true, { expires: 5 });                
		        }
		        else
		        {
		            // reset cookies
		            $.cookie('username', null);
		            $.cookie('password', null);
		            $.cookie('remember', null);
		        }
		      });
			
			$('btn1').click(function(){
				var pwd = $('#userpwd').val();
				if(pwd==null || pwd.length==0){
					$('#errorpwd').html("密碼未填寫");
				}
			});
			FB.init({
				appId : '121833945308567',
				status : true,
				cookie : true,
				xfbml : true,
				version : 'v2.12'
			});
			$('#FBLogin').click(function(){
				FB.login(function(response) {
				    if (response.authResponse) {
				     console.log('Welcome!  Fetching your information........ ');
				      FB.api('/me',{ locale: 'zh_TW', fields: 'name, email,picture' } , function(response) {
				    	 alert('Welcome, ' + response.name + "!");
				    	 var userInfo = {"userName" : response.name,"userEmail" :response.email,"userphoto":response.picture};
				    	 console.log(Object.values(userInfo))
				    	 window.location.replace("<%=request.getContextPath()%>/pages/index.jsp");
				      });
				    } else {
				     console.log('User cancelled login or did not fully authorize.');
				     //window.close();
				    }
				});
			})
			
		})
	
	</script>
</body>
</html>