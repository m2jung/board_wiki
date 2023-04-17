<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Study의 메인 화면 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/indexBoard.css">
<title>indexBoard.jsp</title>
</head>
<body>
	<!-- header -->
		<jsp:include page="../main/navbar.jsp"/>
		<div id="header-subject_category">
			<a href=/00_wiki_board/main/indexBoard.jsp?req=java>JAVA</a>
			<a href=/00_wiki_board/main/indexBoard.jsp?req=jsp>JSP</a>
			<a href=/00_wiki_board/main/indexBoard.jsp?req=sql>SQL</a>
			<a href=/00_wiki_board/main/indexBoard.jsp?req=html>HTML/CSS</a>
			<a href=/00_wiki_board/main/indexBoard.jsp?req=js>JavaScript</a>
		</div>
		
	<!--  main -->
	<main> 	
		<aside><!-- aside --> 
	
			<c:if test="${sessionScope.memberId!=null }">
			<div class="board_screen-category">	
				<ul>
					<li><a href="../baord/boardWriteForm">글쓰기</a></li>
					<li><a href="../baord/boardWriteList">글목록</a></li>
				</ul>
			</div>
			</c:if>
		</aside>
		<!-- content -->
		<content>
			<c:if test="${param.req =='boardWriteForm'}">
				<jsp:include page="../board/boardWriteForm.jsp"/>
			</c:if>
		</content>
	</main>
	
	<!-- footer -->
	<footer>
	</footer>
	
</body>
</html>