<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Bootstrap core CSS -->
	<link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Font Awesome -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="Scott">
	<title>Gaming Shop 登入畫面</title>
	<!-- 頁面樣式 -->
	<link href="../../css/loginpage.css" rel="stylesheet">
</head>
<body>
	<div class="container" style="width:360px;" id="menu">
		<div class="title">
			<h1 class="text-center">Gaming Store</h1>
			<p class="text-center">Login Page</p>
		</div>
		<div class="loginbox">
			<form method="post" action="<c:url value="/loginServlet"/>">
			  <div class="form-group">
			    <label><i class="fa fa-user-o fa-2x"></i></label>
			    <input type="text" class="form-control" id="userid"  placeholder="請輸入您的帳號" name="userid" maxlength="10">
			  </div>
			  <div class="form-group">
			    <label><i class="fa fa-lock fa-2x"></i></label>
			    <input type="password" class="form-control" id="pwd" placeholder="請輸入您的密碼" name="pwd" maxlength="10">
			  </div>
			  <div class="form-check">
			    <input type="checkbox" class="form-check-input" id="rbpwd">
			    <label class="form-check-label" >記住密碼</label>
			    <button type="button" class="btn btn-link pull-right">忘記密碼</button>			 
			  </div>
			  <button type="submit" class="btn btn-success btn-block">登入</button>
			</form>
		</div>
	</div>

<!-- Bootstrap core JavaScript -->
	<script src="../../vendor/jquery/jquery.min.js"></script>
	<script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>