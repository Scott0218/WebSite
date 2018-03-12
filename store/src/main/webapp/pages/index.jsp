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

<title>My Store</title>

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

<!-- Custom styles for this template -->
<link href="<%= request.getContextPath() %>/css/keyborad.css" rel="stylesheet">

<!-- 通用css -->
<link href="<%= request.getContextPath() %>/css/current.css" rel="stylesheet">

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
				<li class="nav-item active px-lg-4"><a
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
				<a class="nav-link text-uppercase text-expanded" id="userlogin" href="<c:url value="/signOutServlet"/>">會員登出<i class="fa fa-user-o"
						style="font-size: 28px"></i></a></li></c:if>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded" href="#" id="side-menubar">購物車<i
						class="fa fa-shopping-cart" style="font-size: 28px"></i></a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- content -->
	<div class="container-fluid" id="prodKeyborad">
		<div>
			<h1 class="text-center text-white">最棒的遊戲鍵盤</h1>
			<br>
			<p class="text-center text-primary">所有的 SteelSeries
				鍵盤都配備最新技術。我們超強的遊戲鍵盤配備領先業界的機械式按鍵、單鍵 RGB 背光效果，並且都與個人電腦和 Mac 相容。</p>
		</div>
		<div class="row grid-lod effect-2" id="prodMain">
			<div class="col-md-3">
				<a href="<%= request.getContextPath() %>/pages/details/apex-m750.jsp"><img src="<%= request.getContextPath() %>/images/keyborad-m750.png" alt=""> </a>
				<h2>Apex M750</h2>
				<p>$149.99 美元</p>
				<p>鋁核芯機械式電競鍵盤</p>
			</div>
			<div class="col-md-3">
				<a href="<%= request.getContextPath() %>/pages/details/apex-150.jsp"><img src="<%= request.getContextPath() %>/images/keyborad-m150.png" alt=""></a>
				<h2>APEX 150</h2>
				<p>$129.99美元</p>
				<p>RGB 遊戲鍵盤</p>
			</div>
			<div class="col-md-3">
				<a href="<%= request.getContextPath() %>/pages/details/apex-m500.jsp"><img src="<%= request.getContextPath() %>/images/keyborad-m500.png" alt=""></a>
				<h2>APEX M500</h2>
				<p>$69.99 美元</p>
				<p>像專家一樣玩遊戲</p>
			</div>
			<div class="col-md-3">
				<a href="<%= request.getContextPath() %>/pages/details/apex-m750-tkl.jsp"><img src="<%= request.getContextPath() %>/images/keyborad-m750-tkl.png" alt=""></a>
				<h2>APEX M750 TKL</h2>
				<p>$119.99 美元</p>
				<p>精巧的機械式電競鍵盤</p>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6"
				style="background-image: url('<%= request.getContextPath() %>/images/KeyBack.jpg'); background-position: center; height: 600px; width: 360px;">
				<div id="menu">
					<h2 class="text-white">鍵盤</h2>
					<p class="text-white py-1">KeyBorad</p>
					<a href="<%= request.getContextPath() %>/pages/index.jsp"><button type="button" class="btn btn-outline-success">立即購買</button></a>
				</div>
			</div>
			<div class="col-md-6"
				style="background-image: url('<%= request.getContextPath() %>/images/mouse.jpg'); background-position: center; height: 600px; width: 360px;">
				<div id="menu">
					<h2 class="text-white">滑鼠</h2>
					<p class="text-white py-1">Mouse</p>
					<a href="<%= request.getContextPath() %>/pages/mouse.jsp"><button type="button" class="btn btn-outline-success">立即購買</button></a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6"
				style="background-image: url('<%= request.getContextPath() %>/images/headPhone.jpg'); background-position: center; height: 600px; width: 360px;">
				<div id="menu">
					<h2 class="text-white">耳機</h2>
					<p class="text-white py-1">HeadSets</p>
					<a href="<%= request.getContextPath() %>/pages/headset.jsp"><button type="button" class="btn btn-outline-success">立即購買</button></a>
				</div>
			</div>
			<div class="col-md-6"
				style="background-image: url('<%= request.getContextPath() %>/images/contactUs.jpg'); background-position: center; height: 600px; width: 360px;">
				<div id="menu">
					<h2 class="text-white">聯絡我們</h2>
					<p class="text-white py-1">Contact Us</p>
					<a href="<%= request.getContextPath() %>/pages/contact.jsp"><button type="button" class="btn btn-outline-success">聯絡我們!!</button></a>
				</div>
			</div>
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
	            <c:if test="${!empty mycart }">
	            	<table class="table table-dark">
	        		<tr>
	        			<td>產品編號</td>
	        			<td>產品名稱</td>
	        			<td>售價</td>
	        		</tr>
	        		<c:forEach var="info" items="${userlist}">
	        		<tr>
	        			<td>${info.pid}</td>
	        			<td>${info.name}</td>
	        			<td>${info.price}</td>
	        		</tr>
	        		</c:forEach>
	        		</table>
	        		<c:if test="${empty userlist }">
	        			<p class="text-center py-2">您的購物車尚無商品</p>
		            	<a href="<%= request.getContextPath() %>/pages/index.jsp"><button type="button" class="btn btn-info btn-block">開始購物</button></a>
		            </c:if>
	        		<c:if test="${!empty userlist}">
	        			<p class="text-dark text-left">商品總價格:${totalPrice}</p>
	        			<a class="btn btn-info btn-block" href="<%= request.getContextPath() %>/pages/checkout.jsp">前往結帳</a>
	        		</c:if>   
	            </c:if>
            </div>
        </div>
    </div>
	<!-- Bootstrap core JavaScript -->
	<script src="<%= request.getContextPath() %>/vendor/jquery/jquery.min.js"></script>
	<script src="<%= request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- 通用JS -->
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/myjs/global.js"></script>
	

</body>
</html>