<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Scott">

<title>Rival 110 - 採通用抓握設計的競賽級遊戲滑鼠</title>

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
				<li class="nav-item active px-lg-4"><a
					class="nav-link text-uppercase text-expanded"
					href="../mouse.jsp">滑鼠</a></li>
				<li class="nav-item px-lg-4"><a
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
		<h1 class="text-center text-white">Rival 110</h1>
		<div class="row details">
			<div>
				<div>
					<img src="../../images/details/ms_rival110.png" alt="">
				</div>
			</div>
			<div>
				<div class="products-contact">
					<h1 class="text-left">Rival 110</h1>
					<ul class="purchase-product__list">
						<li>獨家 SteelSeries TrueMove1 光學感應器</li>
						<li>真實 1:1 軌跡搭配 7,200 CPI 與 240 IPS</li>
						<li>適合所有抓握風格的人類工程學 6 顆按鍵通用設計</li>
						<li>3000 萬次點擊機械式按鍵</li>
						<li>超級耐用的 87.5克輕巧結構</li>
					</ul>
					<h2 class="text-left text-info" style="padding-top: 28px;">
						$89.99<em>美元</em>
					</h2>
					<div class="add-shop">
						<form action="<c:url value="/BuyDispatcherServlet"/>" method="get">
							<button class="btn btn-warning btn-block" name="product" value="004" id="btn1">加入購物車</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 規格說明 -->
	<section class="accordian-wrapper">
	<section class="accordion js-collapsible" role="region">
		<div class="container container--large">
		<h1 class="text-center text-dark" style="padding:28px">規格</h1>
		<h2 class="accordion__toggle js-collapsible-toggle" role="button">感應器</h2>
		<div class="accordion__section">
			<div class="accordion__section__inner">
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">感應器名稱</h6>
					<p class="data-point__value col-sm-9">SteelSeries TrueMove1</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">感應器類型</h6>
					<p class="data-point__value col-sm-9">光學</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">CPI</h6>
					<p class="data-point__value col-sm-9">200 - 7,200、100 CPI 增量</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">IPS</h6>
					<p class="data-point__value col-sm-9">240，在 SteelSeries QcK 表面</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">加速</h6>
					<p class="data-point__value col-sm-9">30克</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">滑鼠輪詢速率：</h6>
					<p class="data-point__value col-sm-9">1 毫秒</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">硬體加速</h6>
					<p class="data-point__value col-sm-9">無（零硬體加速）</p>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section class="accordion closed js-collapsible" role="region">
	<div class="container container--large">
		<h2 class="accordion__toggle js-collapsible-toggle" role="button">設計</h2>
		<div class="accordion__section">
			<div class="accordion__section__inner">
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">頂級材料</h6>
					<p class="data-point__value col-sm-9">抗指紋半粗糙霧面</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">主要架構</h6>
					<p class="data-point__value col-sm-9">塑膠</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">形狀</h6>
					<p class="data-point__value col-sm-9">人類工程學，通用設計</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">抓握風格</h6>
					<p class="data-point__value col-sm-9">所有款式，掌式/爪式/指尖</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">按鈕數</h6>
					<p class="data-point__value col-sm-9">6</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">按鍵類型</h6>
					<p class="data-point__value col-sm-9">機械式額定 3000 萬次按壓</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">發光特效</h6>
					<p class="data-point__value col-sm-9">RGB 發光特效</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">重量</h6>
					<p class="data-point__value col-sm-9">87.5克</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">長度</h6>
					<p class="data-point__value col-sm-9">120.6公釐</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">寬度</h6>
					<p class="data-point__value col-sm-9">58公釐（前），57公釐（中），68公釐（後）</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">高度</h6>
					<p class="data-point__value col-sm-9">38.12公釐</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">纜線長度</h6>
					<p class="data-point__value col-sm-9">2 公尺，6.5 英尺</p>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section class="accordion closed js-collapsible" role="region">
	<div class="container container--large">
		<h2 class="accordion__toggle js-collapsible-toggle" role="button">相容性</h2>
		<div class="accordion__section">
			<div class="accordion__section__inner">
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">OS</h6>
					<p class="data-point__value col-sm-9">Windows、Mac 與 Linux。需 USB
						埠口</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">軟體</h6>
					<p class="data-point__value col-sm-9">SteelSeries 引擎
						3.10.12+，支援 Windows（10.8 或以上版本）與 Mac OSX（7 或以上版本）</p>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section class="accordion closed js-collapsible" role="region">
	<div class="container container--large">
		<h2 class="accordion__toggle js-collapsible-toggle" role="button">包裝盒內容</h2>
		<div class="accordion__section">
			<div class="accordion__section__inner">
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">產品資訊指南</h6>
					<p class="data-point__value col-sm-9"></p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">Rival 110 遊戲滑鼠</h6>
					<p class="data-point__value col-sm-9"></p>
				</div>
			</div>
		</div>
	</div>
	</section>
	</section>
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