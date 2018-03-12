<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Bootstrap core CSS -->
	<link href="<%= request.getContextPath() %>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap core JavaScript -->
	<script src="<%= request.getContextPath() %>/vendor/jquery/jquery.min.js"></script>
	<script src="<%= request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="http://connect.facebook.net/zh_TW/all.js"></script>
<style>
	.memberBox div{
		padding-top:10px;
	}
	body{
		font-family:'微軟正黑體',sans-serif;
	}
</style>	

<title>會員登入</title>
</head>
<body>
<!-- 會員登入 -->
	<div class="memberBox">
		
		<div class="container">
			<form action="<c:url value="/id"/>" method="post" >
				<div class="text-left text-dark" id="memberinput">
					<div class="form-group">
						<label>會員帳號:</label> <input class="form-control" id="userId" name="userId"
							type="text" required="" placeholder="請輸入會員帳號">
						<p class="help-block text-danger" id="erroruid"></p>
					</div>
					<div class="form-group">
						<label>會員密碼:</label> <input class="form-control" id="userPwd" name="userPwd"
							type="password" maxlength="10">
						<p class="help-block text-danger" id="errorpwd"></p>
					</div>
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="rbpwd">
						<label class="form-check-label">記住密碼</label>
						<a href="" class="d-flex justify-content-end">忘記密碼</a>
					</div>
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
	
	
	<!-- Bootstrap core JavaScript -->
	<script src="<%= request.getContextPath() %>/vendor/jquery/jquery.min.js"></script>
	<script src="<%= request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	
	<script>
		$(document).ready(function(){
			$('btn1').click(function(){
				var pwd = $('#userpwd').val();
				if(pwd==null || pwd.length==0){
					$('#errorpwd').html("密碼未填寫");
				}
			})
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
				     console.log('Welcome!  Fetching your information<%= request.getContextPath() %><%= request.getContextPath() %> ');
				      FB.api('/me',{ locale: 'zh_TW', fields: 'name, email,picture' } , function(response) {
				    	 alert('Welcome, ' + response.name + "!");
				    	 var userInfo = {"userName" : response.name,"userEmail" :response.email,"userphoto":response.picture};
				    	 console.log(Object.values(userInfo))
				    	 window.close('<%= request.getContextPath() %>/pages/userLogin.jsp')
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