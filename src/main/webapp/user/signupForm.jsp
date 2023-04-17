<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/sign.css">
<title>회원가입</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/navbar.jsp"/>
	
	<!-- main -->
	<div class="screen_signup">
		<div class="screen_signup-form">
			<form action="../user/signup.jsp" method="post" name="signup.Form">
				<h2>join WiKi</h2>
				<p>* Name <br><input type=text name="name" required/></p>
				<p>* Id <br><input type=text name="id" size="15" required/>&nbsp;<input type=button value="CHECK" onclick="checkId()"></p>
				<p>* Password <br><input type=password name="pwd" required/></p>
				<p>* E-mail <br><input type=text name="email" required/></p>
				<p>* Tel <br>
				<input type=text name="tel_1" size="4" value="010" required/> -
				<input type=text name="tel_2" size="5" maxlength="4" required/> -
				<input type=text name="tel_3" size="5" maxlength="4" required/> 
				</p>
				<p><input type="checkbox" required><span> 이용약관, 개인정보 수집 및 이용 어쩌구 저쩌구 마케팅 수신 거부에 완전 동의합니다.</span></p>
		</div>
		<div class="screen_signup-btn">
			<input type="reset" value="RESET"/> &nbsp;
			<input type="submit" value="OK"/>
		</div>	
			</form>
	</div>
	
	<!-- footer -->
	<footer>
		<h5>Copyright&copy; 2023. 미정 all rights reserved</h5>
	</footer>
</body>
</html>