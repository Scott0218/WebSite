<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="../css/keyborad.css" rel="stylesheet">

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
					class="nav-link text-uppercase text-expanded" href="../pages/index.jsp">鍵盤 <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item px-lg-4"><a
					class="nav-link text-uppercase text-expanded" href="../pages/mouse.jsp">滑鼠</a></li>
				<li class="nav-item active px-lg-4"><a
					class="nav-link text-uppercase text-expanded" href="../pages/headset.jsp">耳機</a></li>
				<li class="nav-item px-lg-4"><a
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
	<!-- content -->
	<div class="container-fluid" id="prodKeyborad">
		<div>
			<h1 class="text-center text-white">Best Gaming Headsets</h1>
			<br>
			<p class="text-center text-primary">Arctis系列遊戲耳機與PC，Mac，Xbox，PS4，Nintendo Switch，VR和移動設備兼容。每款Arctis耳機都附帶我們的旗艦音頻驅動程序，ClearCast麥克風以及非凡的舒適度。</p>
		</div>
		<div class="row grid-lod effect-2" id="prodMain">
			<div class="col-md-3">
				<a href="../pages/details/hs-Arctis7.jsp"><img src="../images/headset1.png" alt=""> </a>
				<h2>Arctis 7</h2>
				<p>$179.99 美元</p>
				<p>零延遲無線音響，電池壽命超過 24 小時，搭配 DTS Headphone:X 7.1 Surround。</p>
			</div>
			<div class="col-md-3">
				<a href="../pages/details/hs-Arctis5.jsp"><img src="../images/headset2.png" alt=""></a>
				<h2>Arctis 5</h2>
				<p>$129.99 美元</p>
				<p>RGB illumination, Game/Chat audio balance, and DTS Headphone:X 7.1 Surround.</p>
			</div>
			<div class="col-md-3">
				<a href="../pages/details/hs-Arctis3.jsp"><img src="../images/headset3.png" alt=""></a>
				<h2>Arctis 3</h2>
				<p>$149.99 美元</p>
				<p>有線玩遊戲，藍牙享生活。實況。</p>
			</div>
			<div class="col-md-3">
				<a href="../pages/details/hs-Arctis3pro.jsp"><img src="../images/headset4.png" alt=""></a>
				<h2>Arctis 3 PRO</h2>
				<p>$99.99  美元</p>
				<p>適合任何遊戲平台的最佳耳機</p>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6"
				style="background-image: url('../images/KeyBack.jpg'); background-position: center; height: 600px; width: 360px;">
				<div id="menu">
					<h2 class="text-white">鍵盤</h2>
					<p class="text-white py-1">KeyBorad</p>
					<a href="../pages/index.jsp"><button type="button" class="btn btn-outline-success">立即購買</button></a>
				</div>
			</div>
			<div class="col-md-6"
				style="background-image: url('../images/mouse.jpg'); background-position: center; height: 600px; width: 360px;">
				<div id="menu">
					<h2 class="text-white">滑鼠</h2>
					<p class="text-white py-1">Mouse</p>
					<a href="../pages/mouse.jsp"><button type="button" class="btn btn-outline-success">立即購買</button></a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6"
				style="background-image: url('../images/headPhone.jpg'); background-position: center; height: 600px; width: 360px;">
				<div id="menu">
					<h2 class="text-white">耳機</h2>
					<p class="text-white py-1">HeadSets</p>
					<a href="../pages/headset.jsp"><button type="button" class="btn btn-outline-success">立即購買</button></a>
				</div>
			</div>
			<div class="col-md-6"
				style="background-image: url('../images/contactUs.jpg'); background-position: center; height: 600px; width: 360px;">
				<div id="menu">
					<h2 class="text-white">聯絡我們</h2>
					<p class="text-white py-1">Contact Us</p>
					<a href="../pages/contact.jsp"><button type="button" class="btn btn-outline-success">聯絡我們!!</button></a>
				</div>
			</div>
		</div>
	</div>

	<section class="page-section clearfix">
	<div class="container">
		<div class="intro">
			<img class="intro-img img-fluid mb-3 mb-lg-0 rounded"
				src="../img/intro.jpg" alt="">
			<div class="intro-text left-0 text-center bg-faded p-5 rounded">
				<h2 class="section-heading mb-4">
					<span class="section-heading-upper">Fresh Coffee</span> <span
						class="section-heading-lower">Worth Drinking</span>
				</h2>
				<p class="mb-3">Every cup of our quality artisan coffee starts
					with locally sourced, hand picked ingredients. Once you try it, our
					coffee will be a blissful addition to your everyday morning routine
					- we guarantee it!</p>
				<div class="intro-button mx-auto">
					<a class="btn btn-primary btn-xl" href="#">Visit Us Today!</a>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section class="page-section cta">
	<div class="container">
		<div class="row">
			<div class="col-xl-9 mx-auto">
				<div class="cta-inner text-center rounded">
					<h2 class="section-heading mb-4">
						<span class="section-heading-upper">Our Promise</span> <span
							class="section-heading-lower">To You</span>
					</h2>
					<p class="mb-0">When you walk into our shop to start your day,
						we are dedicated to providing you with friendly service, a
						welcoming atmosphere, and above all else, excellent products made
						with the highest quality ingredients. If you are not satisfied,
						please let us know and we will do whatever we can to make things
						right!</p>
				</div>
			</div>
		</div>
	</div>
	</section>
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
	<!-- 通用JS -->
	<script type="text/javascript" src="../js/myjs/global.js"></script>
</body>
</html>