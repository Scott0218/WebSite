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

<title>Arctis 3 遊戲耳機，不論任何場合都能遊戲</title>

<!-- Font Awesome -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../../css/business-casual.min.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="../../vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Details CSS -->
<link href="../../css/details.css" rel="stylesheet">
<!-- 通用css -->
<link href="../../css/current.css" rel="stylesheet">
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
			href="../index.jsp">Gaming Shopping</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav mx-auto">
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded"
					href="../index.jsp">鍵盤 <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded"
					href="../mouse.jsp">滑鼠</a></li>
				<li class="nav-item active px-lg-4"><a
					class="nav-link text-uppercase text-expanded"
					href="../headset.jsp">耳機</a></li>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded"
					href="../contact.jsp">聯絡我們</a></li>
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
					class="nav-link text-uppercase text-expanded" href="#"
					id="side-menubar">購物車<i class="fa fa-shopping-cart"
						style="font-size: 28px"></i></a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- contact -->
	<div class="container-fluid">
		<h1 class="text-center text-white">Arctis 3 PRO</h1>
		<div class="row details">
			<div>
				<div>
					<img src="../../images/details/hs-Arctis3_pro.png" alt="">
				</div>
			</div>
			<div>
				<div class="products-contact">
					<h1 class="text-left">Arctis 3 PRO</h1>
					<ul class="purchase-product__list">
						<li>適合任何遊戲平台的最佳耳機</li>
						<li>ClearCast，遊戲領域最佳麥克風</li>
						<li>SteelSeries 7.1 環繞音效</li>
					</ul>
					<h2 class="text-left text-info" style="padding-top: 28px;">
						$99.99<em>美元</em>
					</h2>
					<div class="add-shop">
						<form action="<c:url value="/BuyDispatcherServlet"/>" method="get">
							<button class="btn btn-warning btn-block" name="product" value="012" id="btn1">加入購物車</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 規格說明 -->
	<section class="accordian-wrapper"> <section
		class="accordion js-collapsible" role="region">
	<div class="container container--large">
	</div>
	</section> <section class="accordion js-collapsible" role="region">
	<div class="container container--large">
		<h1 class="text-center text-dark" style="padding:28px">規格</h1>
		<h2 class="accordion__toggle js-collapsible-toggle" role="button">喇叭驅動器</h2>
		<div class="accordion__section">
			<div class="accordion__section__inner">
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">釹驅動器</h6>
					<p class="data-point__value col-sm-9">40mm</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">耳機頻率回應</h6>
					<p class="data-point__value col-sm-9">20-22000 Hz</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">耳機靈敏度</h6>
					<p class="data-point__value col-sm-9">98db</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">耳機阻抗</h6>
					<p class="data-point__value col-sm-9">32 Ohm</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">耳機總諧波失真</h6>
					<p class="data-point__value col-sm-9">&lt; 3%</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">耳機音量控制</h6>
					<p class="data-point__value col-sm-9">貼耳式耳罩</p>
				</div>
			</div>
		</div>
	</div>
	</section> <section class="accordion closed js-collapsible" role="region">
	<div class="container container--large">
		<h2 class="accordion__toggle js-collapsible-toggle" role="button">麥克風</h2>
		<div class="accordion__section">
			<div class="accordion__section__inner">
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">麥克風頻率回應</h6>
					<p class="data-point__value col-sm-9">100Hz - 10000Hz</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">麥克風模式</h6>
					<p class="data-point__value col-sm-9">雙向式</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">麥克風靈敏度</h6>
					<p class="data-point__value col-sm-9">-48 db</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">麥克風阻抗</h6>
					<p class="data-point__value col-sm-9">2200 Ohm</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">麥克風降噪</h6>
					<p class="data-point__value col-sm-9">是</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">麥克風位置</h6>
					<p class="data-point__value col-sm-9">伸縮式</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">麥克風靜音切換</h6>
					<p class="data-point__value col-sm-9">貼耳式耳罩</p>
				</div>
			</div>
		</div>
	</div>
	</section> <section class="accordion closed js-collapsible" role="region">
	<div class="container container--large">
		<h2 class="accordion__toggle js-collapsible-toggle" role="button">連接</h2>
		<div class="accordion__section">
			<div class="accordion__section__inner">
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">連接器類型</h6>
					<p class="data-point__value col-sm-9">雙孔 3.5 公釐、3 極插頭或單孔 3.5
						公釐、4 極插頭（透過隨附轉接器）</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">纜線長度</h6>
					<p class="data-point__value col-sm-9">3m, 10ft</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">纜線材料</h6>
					<p class="data-point__value col-sm-9">橡膠</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">轉接器</h6>
					<p class="data-point__value col-sm-9">單孔 3.5 公釐、4 極插頭</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">共用耳機插孔</h6>
					<p class="data-point__value col-sm-9">是</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">可卸除纜線</h6>
					<p class="data-point__value col-sm-9">是</p>
				</div>
			</div>
		</div>
	</div>
	</section> <section class="accordion closed js-collapsible" role="region">
	<div class="container container--large">
		<h2 class="accordion__toggle js-collapsible-toggle" role="button">包裝盒內容</h2>
		<div class="accordion__section">
			<div class="accordion__section__inner">
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">產品資訊指南</h6>
					<p class="data-point__value col-sm-9">
						<a
							href="https://downloads.steelseriescdn.com/guides/Arctis-3_PIG_rev5_Aug15-2016.pdf">下載</a>
					</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">ARCTIS 3</h6>
					<p class="data-point__value col-sm-9"></p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">主要纜線</h6>
					<p class="data-point__value col-sm-9"></p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">雙孔 3.5 公釐延伸纜線</h6>
					<p class="data-point__value col-sm-9"></p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">3.5 公釐 4 極轉接器</h6>
					<p class="data-point__value col-sm-9"></p>
				</div>
			</div>
		</div>
	</div>
	</section></section>
	<!-- 常見問題 -->

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
	            		<a href="../index.jsp"><button type="button" class="btn btn-info btn-block">開始購物</button></a>
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
	<script src="../../vendor/jquery/jquery.min.js"></script>
	<script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- 通用JS -->
	<script src="../../js/myjs/detail.js" type="text/javascript"></script>
	
</body>
</html>