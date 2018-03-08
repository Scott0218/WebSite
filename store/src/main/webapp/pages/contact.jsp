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
<title>Contact Us</title>

<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

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
<link href="../css/business-casual.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="../css/contact.css" rel="stylesheet">

<!-- 通用css -->
<link href="../css/current.css" rel="stylesheet">
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
					href="../pages/index.jsp">鍵盤 <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded"
					href="../pages/mouse.jsp">滑鼠</a></li>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded"
					href="../pages/headset.jsp">耳機</a></li>
				<li class="nav-item active px-lg-4"><a
					class="nav-link text-uppercase text-expanded" href="../pages/contact.jsp">聯絡我們</a></li>
			</ul>
			<ul class="navbar-nav navbar-right">
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded" id="userlogin" href="#">會員登入<i
						class="fa fa-user-o" style="font-size: 28px"></i></a></li>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded" id="side-menubar" href="#">購物車<i
						class="fa fa-shopping-cart" style="font-size: 28px"></i></a></li>
			</ul>
		</div>
	</div>
	</nav>
	
	<section class="page-section clearfix">
	<div class="container">
		<div class="intro">
			<img class="intro-img img-fluid mb-3 mb-lg-0 rounded"
				src="../images/contact/gaming.jpg" alt="">
			<div class="intro-text left-0 text-center bg-faded p-5 rounded">
				<h2 class="section-heading mb-4">
					<span class="section-heading-upper">聯絡我們</span>
				</h2>
				<form action="<c:url value="/ConServlet"/>" method="post">
					<div class="row text-left">
						<div class="col-md-12 ">
							<div class="form-group">
								<label>聯絡姓名:</label> <input class="form-control" id="name"
									type="text" placeholder="請輸入您的姓名" required="" maxlength="6"
									data-validation-required-message="Please enter your name." name="Cname">
								<p class="help-block text-danger" id="errorName"></p>
							</div>
							<div class="form-group">
								<label>Email:</label> <input class="form-control" id="email"
									type="email" placeholder="請輸入您的電子郵件" name="Cmail">
								<p class="help-block text-danger" id="errorEmail"></p>
							</div>
							<div class="form-group">
								<label>聯絡電話:</label> <input class="form-control" id="phone"
									type="tel" placeholder="格式為:0988-xxx-xxx" maxlength="12" name="Ctel">
								<p class="help-block text-danger" id="errorPhone"></p>
							</div>
							<div class="form-group">
								<label>詢問內容:</label>
								<textarea class="form-control" id="message"
									placeholder="請輸入您要詢問的內容" name="Cmessage"></textarea>
								<p class="help-block text-danger"></p>
							</div>
						</div>
					</div>
					<div class="intro-button mx-auto">
							<button class="btn btn-primary btn-xl" type="submit" id="btn1">提交!</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<!-- 產品 -->
	<section class="page-section cta">
	<div class="container">
		<h1 class="text-white text-left">選購產品</h1>
		<div class="row">
			<div class="col" id="catelog"
				style="background-image: url('../images/contact/hs.jpg')">
				<span class="title">耳機</span> <a href="../pages/headset.jsp"><button
						type="button" class="btn btn-dark buy">選購耳機</button></a>
			</div>
			<div class="col" id="catelog"
				style="background-image: url('../images/contact/kb.jpg')">
				<span class="title">鍵盤</span> <a href="../pages/index.jsp"><button
						type="button" class="btn btn-dark buy">選購鍵盤</button></a>
			</div>
		</div>
		<div class="row">
			<div class="col" id="catelog"
				style="background-image: url('../images/contact/hs.jpg')">
				<span class="title">滑鼠</span> <a href="../pages/mouse.jsp"><button
						type="button" class="btn btn-dark buy">選購滑鼠</button></a>
			</div>
			<div class="col" id="catelog"
				style="background-image: url('../images/contact/mp.jpg')">
				<span class="title">聯繫我們</span> <a href="../pages/contact.jsp"><button
						type="button" class="btn btn-dark buy">聯繫我們</button></a>
			</div>
		</div>
	</div>
	</section>
	<%-- 地圖 --%>
	<div class="container">
		<h1 class="text-center text-white">聯絡位置</h1>
	</div>
	<div>
		<div class="map">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d721945.6124988236!2d-61.95477407336356!3d-1.6199411705177136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x926eca1645365b6b%3A0xabfc431d20b2b474!2z5Lqe6aas6YGc5rKz!5e0!3m2!1szh-TW!2stw!4v1518560826951"
				width="1900" height="480" frameborder="0" style="border: 0"
				allowfullscreen></iframe>
		</div>
	</div>
	<footer class="footer text-faded text-center py-5">
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
	            <a href="../pages/index.jsp"><button type="button" class="btn btn-info btn-block">開始購物</button></a>
            </div>
        </div>
    </div>
	<!-- Bootstrap core JavaScript -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- 加載FB API -->
	<script src="http://connect.facebook.net/zh_TW/all.js"></script>
	<!-- 通用JS -->
	<script type="text/javascript" src="../js/myjs/global.js"></script>
	<script>
		$(document).ready(function() {
			//取得控項
			$("form").submit(function(e){
				var mes = $('#message').val();
				if(mes.length>0 &&mes!=null){
					$(this).submit();
				}else{
					e.preventDefault();
				    alert('詢問內容不可為空')
				}
			    
			  });
			$('#name').blur(function() {
				var name = $('#name').val();
				var re = /^[\u4E00-\u9FA5]{2,3}$/;
				if (re.test(name)) {
					$('#errorName').html('格式正確');
				} else {
					//取得控項
					$('#errorName').html('格式錯誤');
				}
			})
			
			$('#phone').blur(function() {
				var phone = $('#phone').val();
				var re = /^09\d{2}-\d{3}-\d{3}$/;
				if (re.test(phone)) {
					$('#errorPhone').html('格式正確');
				} else {
					//取得控項
					$('#errorPhone').html('格式錯誤');
				}
			})
			
		});
	</script>


</body>
</html>