<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signinForm.jsp</title>
<link rel="stylesheet" href="../css/sign.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/navbar.jsp"/>
	
	<!-- main -->
	<div class="screen_signin">
		<div class="screen_signin-form">`
			<form action="signin.jsp" method="post" name="signinForm">
				<h3>Login WiKi</h3>
				<p>ID &nbsp;&nbsp;<input type=text name="id"  required/></p>
				<p>PW <input type=password name="pwd" required/></p>
			<div class="screen_signup-btn">
				<input type="button" value="SIGN UP" onclick="location.href='../user/signupForm.jsp'"/>&nbsp;
				<input type="submit" value="OK" />
			</div>
			</form>
		</div>
		
	</div>
	
	<!-- footer -->
	<footer>
		<h5>Copyright&copy; 2023. 미정 all rights reserved</h5>
	</footer>
</body>
</html>