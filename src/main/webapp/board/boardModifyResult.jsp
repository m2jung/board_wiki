<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardModifyResult</title>
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
		<h1> 게시글 수정이 완료 됐습니다 ~! </h1>
		<button onclick="location.href='../board/boardViewResult?seq=${seq}&pg=${pg}'">수정확인</button>
	</c:if>	
	<c:if test="${su == 0}">
		<h1> 게시글 수정 실패..........</h1>
		<button onclick="location.href='../board/boardViewResult?seq=${seq}&pg=${pg}'">다시수정</button>
		<button onclick="location.href='../board/boardListResult?pg=${pg}'">목록보기</button>
	</c:if>	
</body>
</html>