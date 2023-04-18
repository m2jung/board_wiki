<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>siguupResult.jsp</title>
</head>
<body>
	<div class="signup_msg"> 
		<c:if test="${su > 0}">
		<h2> 회원가입을 축하합니다 :)</h2>
		<button onclick="location.href='../main/index.jsp'">Main으로 돌아가기 </button>
		</c:if>
		
		<c:if test="${su == 0}">
		<h2> 회원가입을 실패하였습니다 :(</h2>
		<button onclick="location.href='../main/index.jsp'">Main으로 돌아가기 </button>
		<button onclick="location.href='../user/signinForm.jsp'">로그인 </button>
		</c:if>	
	</div>
</body>
</html>