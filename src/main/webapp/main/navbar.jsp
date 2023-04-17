<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--  상단 메뉴바 html 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/navbar.css">
<title>navbar.jsp</title>
</head>
<body>	
	<header>
		<nav>
			<span id="wiki_main"><a href=/00_wiki_board/main/index.jsp>MAIN</a></span>
			<ul id="header-main_nav">
				<c:if test="${sessionScope.memberId == null}">
				<li><a href=/00_wiki_board/user/signupForm.jsp>Sign up</a></li>
				<li><a href=/00_wiki_board/user/signinForm.jsp>Log in</a></li>	
				</c:if>
				
				<c:if test="${sessionScope.memberId != null }">
				<li><a href=/00_wiki_board/user/modifyReady.jsp>${memberName}님</a></li>
				<li><a href=/00_wiki_board/user/logOut.jsp>로그아웃</a></li>
				</c:if>
			</ul>
		</nav>
	</header>
</body>
</html>	