<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://connect.facebook.net/zh_TW/all.js"></script>
</head>
<body>
 <div id="fb-root">
    </div>
    <p>
        <input id="FBLogin" type="button" value="登入臉書" />
        <input id="test" type="button" value="test" />
    </p>
    <p>
        <span id="uid"></span>
        <br>
        <span id="accessToken"></span>
    </p>
    <!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script>
   $(document).ready(function(){
	   FB.init({ appId: '121833945308567', status: true, cookie: true, xfbml: true ,version:'v2.12' });
	
	   $("#FBLogin").click(function () {
	       FB.login(function (response) {
	           // 登入之後執行的語法
	       }, { scope: "email" });
	   });
	   $('#test').click(function(){
		   window.open('index.html ', 'test', config='height=600,width=600');
	   })
   });
   	
   </script>
</body>
</html>