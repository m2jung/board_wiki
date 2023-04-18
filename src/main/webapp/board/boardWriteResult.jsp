<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWriteResult.jsp</title>
<style type="text/css">

button {
	width: 100px;
	height: 30px;
	margin: 30px;
}
</style>
</head>
<body>
	<c:if test="${su != 0}">
		<h1> 게시글 저장이 완료 됐습니다 ~! </h1>
		<button onclick="location.href='../main/indexBoard.jsp?req=boardListResult'">돌아가기</button>
	</c:if>	
	<c:if test="${su == 0}">
		<h1> 게시글 저장 실패..........</h1>
		<button onclick="location.href='../main/indexBoard.jsp?req=boardListResult'">돌아가기</button>
		<button onclick="location.href='../main/indexBoard.jsp?req=boardWriteForm'">다시 글쓰기</button>
	</c:if>	
</body>
</html>