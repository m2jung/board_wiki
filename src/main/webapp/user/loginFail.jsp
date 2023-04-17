<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginFail.jsp</title>
</head>
<body>
<h1 >Login Fail !!</h1>
	<br>
	<input type="button" value="Main 으로 돌아가기 " onclick="location.href='../main/index.jsp'">
	<input type="button" value="로그인 " onclick="location.href='../user/signin.jsp'">
	
	<script type="text/javascript" >
		window.onload = function() {
			alert("아이디랑 비밀번호를 다시 확인해주세요 :(");
		}
	</script>
</body>
</html>