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
	
<!-- Custom styles for this template -->
<link href="<%= request.getContextPath() %>/css/business-casual.min.css" rel="stylesheet">

<!-- 通用css -->
<link href="<%= request.getContextPath() %>/css/current.css" rel="stylesheet">

<title>Gaming 尋回密碼</title>

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
				<c:if test="${empty user}">
				<li class="nav-item px-lg-4">
				<a class="nav-link text-uppercase text-expanded" id="userlogin" href="<%= request.getContextPath() %>/pages/login.jsp">會員登入<i class="fa fa-user-o"
						style="font-size: 28px"></i></a></li></c:if>
				<c:if test="${!empty user}">
				<li class="nav-item px-lg-4">
				<a class="nav-link text-uppercase text-expanded" id="userlogin" href="<%= request.getContextPath() %>/pages/login.jsp">會員登出<i class="fa fa-user-o"
						style="font-size: 28px"></i></a></li></c:if>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded" href="#" id="side-menubar">購物車<i
						class="fa fa-shopping-cart" style="font-size: 28px"></i></a></li>
			</ul>
		</div>
	</div>
	</nav>
	<%--尋找密碼區塊 --%>
	<div id="div2">
		<div class="container">
		<form action="<c:url value="/login_help"/>" method="post">
			<div class="content">
	        	<h1 class="text-center text-warning"><i class="fa fa-cog"></i>尋回密碼</h1>
	        </div>
	        <div class="forgetBox">
	        <div class="main">
	        	<div class="form-group">
					<label>會員帳號</label> <input class="form-control" id="userId" name="userId" type="text" required="" placeholder="請輸入您註冊時的帳號" maxlength="10">
					<p class="help-block text-danger" id="erroruid">${map.errMid}</p>
				</div>
				<div class="form-group">
					<label>會員Email</label> 
					<input class="form-control" id="userEmail" name="userEmail" type="text" required="" placeholder="請輸入您註冊時的Email" maxlength="30">
					<p class="help-block text-danger" id="errorEmail">${map.errEmail}</p>
				</div>
				<div>
					<center><img src="<%= request.getContextPath() %>//kaptcha.jpg" onclick="changeVerifyCode(this)"></center>
						<p class="text-center text-primary">若驗證碼看不清楚，請點擊圖片刷新</p>
				</div>
				<div class="form-group">
					<label for="exampleInputkaptcha"> 請輸入驗證碼 </label>
					<input type="text" class="form-control" name="kaptcha" placeholder="驗證碼" />
					<p class="help-block text-danger" id="errorNum">${map.errNum}</p> 
				</div>
				<div class="d-flex justify-content-center">
					<button class="btn btn-primary" type="submit" id="btn">找回密碼</button>
				</div>
	        </div>
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
	<!-- 通用JS -->
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/myjs/global.js"></script>
	
	<script type="text/javascript">
	//點擊可以切換驗證碼
	function changeVerifyCode(img) {
		img.src = "<%= request.getContextPath() %>/" +"kaptcha.jpg?" + Math.floor(Math.random() * 100);
	}
	</script>
	<script>
		$(document).ready(function(){
			$('#userEmail').blur(function(){
				var userEmail = $('#userEmail').val();
				var re=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				
				if(re.test(userEmail)){
					$('#errorEmail').html('格式正確');
				}else{
					$('#errorEmail').html('格式錯誤');
				}
			})
		})
	</script>
</body>	
</html>