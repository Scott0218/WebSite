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
<link href="<%=request.getContextPath() %>/css/business-casual.min.css" rel="stylesheet">
<title>Gaming 註冊會員</title>

</head>
<body>
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
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded" id="userlogin" href="<%= request.getContextPath() %>/pages/login.jsp">會員登入<i class="fa fa-user-o"
						style="font-size: 28px"></i></a></li>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded" href="#" id="side-menubar">購物車<i
						class="fa fa-shopping-cart" style="font-size: 28px"></i></a></li>
			</ul>
		</div>
	</div>
	</nav>
	<%--register --%>
	<section class="page-section clearfix">
		<div class="intro">
			<div id="registerBox">
				<div class="container">
					<h1 class="text-primary text-center">Gaming 註冊會員</h1>
					<div class="ha">
						<form action="<c:url value="/registerServlet"/>" method="post">
							  <div class="form-row">
							    <div class="form-group col-md-6">
								    <h3 class="text-info text-left"><i class="fa fa-registered"></i>帳號密碼</h3>
								    <hr/>
								    <div>
								      	<label><span id="cc">＊</span>帳號</label>
								      	<input type="text" class="form-control" id="ResId" name="ResId" placeholder="6~10位大小寫英文、數字的組合" maxlength="10">
								    	<p class="help-block text-danger" id="errResId">${errors.errMid}</p>
								    </div> 
								    <div>
									  	<label><span id="cc">＊</span>密碼</label>
									  	<input type="password" class="form-control" id="ResPwd" name="ResPwd" placeholder="6~10位英數字，勿用全形字。" maxlength="10">
								    	<p class="help-block text-danger" id="errResPwd"></p>
								    </div>
								    <div>
								    <p class="text-left text-danger">＊為必要欄位</p>
								    </div>
							    </div>
							    <div class="form-group col-md-6">
								    <h3 class="text-info text-left"><i class="fa fa-address-card"></i>會員資料</h3>
								    <hr/>
								    <div>
								      	<label><span id="cc">＊</span>姓名</label>
								      	<input type="text" class="form-control" id="ResName" name="ResName" placeholder="請輸入真實姓名" maxlength="10">
								    	<p class="help-block text-danger" id="errResName"></p>
								    </div>
								    <div>
									  	<label><span id="cc">＊</span>年齡</label>
							   		  	<input type="text" class="form-control" id="ResAge" name="ResAge" placeholder="請輸入會員年齡" maxlength="3">
								    	<p class="help-block text-danger" id="errResAge"></p>
								    </div>
								    <div>
								    	<label><span id="cc">＊</span>地址</label>
							    		<input type="text" class="form-control" id="ResAddress" name="ResAddress" placeholder="請填寫真實地址，以利取貨" maxlength="30">	
								    	<p class="help-block text-danger" id="errResAddress"></p>
								    </div>
								    <div>
								    	<label><span id="cc">＊</span>電話</label>
							      		<input type="text" class="form-control" id="ResTel" name="ResTel" placeholder="請輸入您的連絡電話" maxlength="12">
								    	<p class="help-block text-danger" id="errResTel"></p>
								    </div>
								    <div class="form-group">
								      <label><span id="cc">＊</span>Email</label>
								      <input type="text" class="form-control" id="ResEmail" name="ResEmail" placeholder="請輸入Email" maxlength="30">
								    	<p class="help-block text-danger" id="errResEmail"></p>
								    </div>
							    </div>
							  </div>
							  <div class="d-flex justify-content-center">
							    <button class="btn btn-primary btn-lg" type="submit">註冊會員</button>
							  </div>
							</form>
							
					</div>
				</div>
			</div>
		</div>		
	</section>
	<%--footer --%>
	<footer class="footer text-faded text-center py-5">
	<div class="container">
		<p class="m-0 small">Copyright &copy; My Website In Jsp 2018</p>
	</div>
	</footer>
	
	<!-- Bootstrap core JavaScript -->
	<script src="<%= request.getContextPath() %>/vendor/jquery/jquery.min.js"></script>
	<script src="<%= request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<script>
		$(document).ready(function(){
			$('#ResId').blur(function(){
				var ResId = $('#ResId').val();
				var re =/^[a-zA-Z0-9]{6,10}$/;
				console.log(ResId);
				if(re.test(ResId)){
					$('#errResId').html('格式正確');
				}else{
					$('#errResId').html('格式錯誤');
				}
			})
			$('#ResPwd').blur(function(){
				var ResPwd = $('#ResPwd').val();
				var re =/^[a-zA-Z0-9]{6,10}$/;
				if(re.test(ResPwd)){
					$('#errResPwd').html('格式正確');
				}else{
					$('#errResPwd').html('格式錯誤');
				}
			})
			$('#ResAge').blur(function(){
				var ResAge = $('#ResAge').val();
				var re=/^[0-9]{1,3}$/;
				if(re.test(ResAge)){
					$('#errResAge').html('格式正確');
				}else{
					$('#errResAge').html('格式錯誤');
				}
			})
			$('#ResAddress').blur(function(){
				var ResAddress = $('#ResAddress').val();
				var re=/^[\u4E00-\u9FA5]{10,30}$/;
				if(re.test(ResAddress)){
					$('#errResAddress').html('格式正確');
				}else{
					$('#errResAddress').html('格式錯誤');
				}
			})
			$('#ResTel').blur(function(){
				var ResTel = $('#ResTel').val();
				var re=/^[0-9]{8,10}$/;
				if(re.test(ResTel)){
					$('#errResTel').html('格式正確');
				}else{
					$('#errResTel').html('格式錯誤');
				}
			})
			$('#ResEmail').blur(function(){
				var ResEmail = $('#ResEmail').val();
				var re=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				
				
				if(re.test(ResEmail)){
					$('#errResEmail').html('格式正確');
				}else{
					$('#errResEmail').html('格式錯誤');
				}
			})
			//什麼情況無法提交
			//$("form").submit(function(e){
			//	e.preventDefault();
			//});
		})
	
	</script>
</body>	
</html>