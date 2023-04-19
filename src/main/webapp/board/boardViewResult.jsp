<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardViewResult.jsp</title>
<style type="text/css">

table,th,td{
	border: 1px solid black;
	border-collapse: collapse;
}
td {
	text-align: center;
}
th {
	background-color: rgba(0,0,0,0.1);
}
textarea {
	text-align: center;
}
.btn {
	display:flex;
	justify-content:center;
}
</style>
</head>
<body>
	<h1>----------- 글보기 -----------</h1>
	<br>
	<table>
		<tr>
			<td colspan="3">[${boarddto.subject}] ${boarddto.title} </td>
		</tr>
		<tr>
			<td width="300px">글번호 : ${seq}</td>
			<td width="300px">작성자 : ${boarddto.name}</td>
			<td width="300px">조회수 : ${boarddto.hit}</td>
		</tr>
		<tr>
			<td colspan="3" height="300px" valign="top">
				<textare rows="20" cols="50">${boarddto.content}</textare>
			</td>
		</tr>
	</table>
	<!-- 로그인한 사람과 작성자가 같으면 화면이 다르게 보임 -->
	<%-- 
	<%if(session.getAttribute("memberId").equals(boardDTO.getId())) { %> 
		<button onclick="location.href='boardModifyForm.jsp?pg=<%=pg%>&seq=<%=seq%>'">글수정</button> 	
		<button onclick="location.href='boardDelete.jsp?seq=<%=seq%>'">글삭제</button> 		
	<%} %>
	--%>
	<div class="btn">
		<button onclick="location.href='boardList.jsp?pg=${pg}'">글목록</button> &nbsp;
		<c:if test="${sessionScope.memberId == boarddto.id}">
		<button onclick="location.href='../board/boardModifyReady.jsp?pg=${pg}&seq=${seq}'">글수정</button> 	
		<button onclick="location.href='../board/boardDelete.jsp?pg=${pg}&seq=${seq}'">글삭제</button> 
		</c:if>
	</div>
	<br><br>
</body>
</html>

