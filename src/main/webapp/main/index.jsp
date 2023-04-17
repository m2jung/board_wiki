<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL Core 태그 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/index.css">
<title>WikiBoard</title> <!-- 메인 화면 페이지  -->
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/navbar.jsp"/>

	<!-- main -->
	<main>
		<div class="main-screen">
		<form>
			<div class="main-screen_title">
				<!--  로그아웃 실행 페이지  -->
				<c:if test="${param.req =='logOutResult'}">
					<jsp:include page="../user/logOutResult.jsp"/>
				</c:if>
				<!-- 회원정보 수정 페이지  -->
				<c:if test="${param.req =='modifyForm'}">
					<jsp:include page="../user/modifyForm.jsp"/>
				</c:if>
				<!-- 회원정보 수정 완료 페이지  -->
				<c:if test="${param.req =='modifyResult'}">
					<jsp:include page="../user/modifyResult.jsp"/>
				</c:if>
			
				<h2>WiKi</h2>	
				<p>&lt;h1&gt;Hello, world&lt;/h1&gt;</p>
				<input type="text" name="search">
				<i class="fa-solid fa-magnifying-glass fa-xs"></i>
			</div>
			<div class="main-screen_menu">
				<a href="../main/indexBoard.jsp">JAVA</a>
				<a href="../main/indexBoard.jsp">JSP</a>
				<a href="../main/indexBoard.jsp">JavaScript</a>
				<a href="../main/indexBoard.jsp">HTML/CSS</a>
				<a href="../main/indexBoard.jsp">SQL</a>
			</div>
		</form>
	</div>
	</main>
	
	<!-- footer -->
	<footer>
		<h5>Copyright&copy; 2023. 미정 all rights reserved</h5>
	</footer>
	
	<!-- end  -->
	<script src="https://kit.fontawesome.com/79da796ef8.js" 
	crossorigin="anonymous"></script>
</body>
</html>