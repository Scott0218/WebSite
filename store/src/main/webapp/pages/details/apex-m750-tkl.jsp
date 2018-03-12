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

<title>Apex M750 Tenkeyless 鋁核芯機械式電競鍵盤</title>

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
				<li class="nav-item active px-lg-4"><a
					class="nav-link text-uppercase text-expanded"
					href="../index.jsp">鍵盤 <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item px-lg-4"><a
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
		<h1 class="text-center text-white">Apex M750 TKL鍵盤</h1>
		<div class="row details">
			<div>
				<div>
					<img src="../../images/details/kb_m750_d1.png" alt="">
				</div>
			</div>
			<div>
				<div class="products-contact">
					<h1 class="text-left">Apex M750 TKL鍵盤</h1>
					<ul class="purchase-product__list">
						<li>電競專用無數字精簡型鍵盤設計</li>
						<li>耐用的 5000 系列鋁製外框</li>
						<li>每個按鍵均有明亮且動態 RGB 光源</li>
						<li>即時 Discord 光源通知</li>
					</ul>
					<span class="text-left text-warning">語言</span> <select
						class="custom-select" id="inputGroupSelect01">
						<option selected>英文</option>
					</select>
					<h2 class="text-left text-info" style="padding-top:28px;">$129.99 <em>美元</em></h2>
					<div class="add-shop">
						<form action="<c:url value="/BuyDispatcherServlet"/>" method="get">
							<button class="btn btn-warning btn-block" name="product" value="008" id="btn1">加入購物車</button>
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
		<h1 class="text-center text-primary" style="padding:28px">規格</h1>
		<h2 class="accordion__toggle js-collapsible-toggle" role="button">設計</h2>
		<div class="accordion__section">
			<div class="accordion__section__inner">
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">頂級材料</h6>
					<p class="data-point__value col-sm-9">5000 Series 鋁合金</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">N 鍵反轉</h6>
					<p class="data-point__value col-sm-9">104 個按鍵（全部）</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">防鬼鍵</h6>
					<p class="data-point__value col-sm-9">100%</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">發光特效</h6>
					<p class="data-point__value col-sm-9">每個按鍵可個別控制的
						RGB，包括全鍵盤模式與回應式輸入效果。</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">重量</h6>
					<p class="data-point__value col-sm-9">2.2 lbs</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">高度</h6>
					<p class="data-point__value col-sm-9">153.5 mm</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">寬度</h6>
					<p class="data-point__value col-sm-9">454 mm</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">深度</h6>
					<p class="data-point__value col-sm-9">46.7 mm</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">纜線長度</h6>
					<p class="data-point__value col-sm-9">2公尺，6.5 英呎</p>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section class="accordion closed js-collapsible" role="region">
	<div class="container container--large">
		<h2 class="accordion__toggle js-collapsible-toggle" role="button">按鍵</h2>
		<div class="accordion__section">
			<div class="accordion__section__inner">
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">類型與名稱</h6>
					<p class="data-point__value col-sm-9">SteelSeries QX2 線性機械式 RGB
						按鍵</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">啟動點</h6>
					<p class="data-point__value col-sm-9">2 mm</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">總行程</h6>
					<p class="data-point__value col-sm-9">4 mm</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">力道</h6>
					<p class="data-point__value col-sm-9">45cN</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">終身</h6>
					<p class="data-point__value col-sm-9">5 千萬次按鍵按壓</p>
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
					<p class="data-point__value col-sm-9">Windows 與 Mac OS X。需要 USB
						埠口</p>
				</div>
				<div class="data-point row">
					<h6 class="data-point__label col-sm-3">軟體</h6>
					<p class="data-point__value col-sm-9">Windows（7 或以上版本）與 Mac
						OSX（10.8 或以上版本）的 SteelSeries 引擎 3.11+</p>
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
						<h6 class="data-point__label col-sm-3">可至換鍵盤支架</h6>
						<p class="data-point__value col-sm-9"></p>
					</div>
					<div class="data-point row">
						<h6 class="data-point__label col-sm-3">Apex M750 遊戲鍵盤</h6>
						<p class="data-point__value col-sm-9"></p>
					</div>
				</div>
			</div>
		</div>
		</section>
		<hr/>
	</section>
	<!-- 特色 -->
	<div style="background-color:white">
		<h1 class="text-center text-primary" style="padding:28px">特色</h1>
		<div class="row">
			<div class="col-md-6">
				<img src="../../images/details/ss.jpg" alt="">
			</div>
			<div class="col-md-6" style="background-color:white;">
				<h2 class="text-center text-dark m-3">QX2 機械式按鍵</h2>
				<p class="text-left text-dark p-5"> SteelSeries QX2 機械式 RGB 按鍵專為純粹效能而打造。QX2 按鍵具有銅製點擊片、透明外殼與 DURACON® 熱塑性主幹，帶給您平滑順暢的線性操作。其 45cN 力道與 2 公釐的啟動點正是在尋找極致快速反應時間玩家的最終夢想。保證 5 千萬次按鍵動作，終生耐用。 </p>
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