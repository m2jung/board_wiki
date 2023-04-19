<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardListResult.jsp</title>
<link rel="stylesheet" href="../css/indexBoard.css">
</head>
<style type="text/css">
h1 {
	text-align: center;
}
th {
	background-color: rgba(0,0,0,0.1);
}
table {
	margin: auto;
	height: 20px;
}
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 20px;
}
td {
	text-align: center;
}
button {
	width: 100px;
	height: 30px;
	margin: 30px;
}
#paging_block {
	width: 100%;
	display:flex;
	justify-content:center;
	text-align: center;
}
#paging {
	color: black;
	text-decoration: none;
}
#currentPaging {
	color: red;
	text-decoration: underline;
}

.main_boardList {
	display:flex;
	flex-direction: column;
	justify-content:center;
	text-align: center;
}

</style>
</head>
<body>
	<h1>---------------- 글목록 -----------------</h1>
	<div class="main_boardList">
	<br>
	<table>
		<tr>
			<th width="100px"> 글번호 </th>
			<th width="500px"> 제 목 </th>
			<th width="150px"> 작성자 </th>
			<th width="150px"> 작성일 </th>
			<th width="100px"> 조회수 </th>
		</tr>
		 <c:forEach var="boarddto" items="${list}">
		<tr>
			<td>${boarddto.seq}</td>
			<td> 
				<a href="#" onclick="isLogin(${boarddto.seq }, ${pg })"> [${boarddto.subject}] ${boarddto.title}</a>
			</td>
			<td>${boarddto.name}</td>
			<td>${boarddto.logdate}</td>
			<td>${boarddto.hit}</td>
		</tr>
		</c:forEach>
	</table>
	<br><br>
	</div>
	<!-- 페이징 -->
	<div id="paging_block">
		<c:if test="${startPage > block}">
			[ <a href="boardList.jsp?pg=${startPage-1}" id="paging"> 이전 </a> ]
		</c:if>
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<c:if test="${i == pg}">
				[ <a href="boardList.jsp?pg=${i}" id="currentPaging">${i}</a> ]
			</c:if>
			<c:if test="${i != pg}">
				[ <a href="boardList.jsp?pg=${i}" id="paging">${i}</a> ]
			</c:if>
		</c:forEach>
		<c:if test="${endPage < totalPage}">
			[ <a href="boardList.jsp?pg=${endPage+1}" id="paging"> 다음 </a> ]
		</c:if>
	</div>
	<br><br>
	<button onclick="location.href='../main/index.jsp'"> Main </button>
<!-- script -->	
<script type="text/javascript">
	function isLogin(seq,pg) {
		<% if(session.getAttribute("memberId")==null){%>
			alert("로그인을 해야합니다!!");
		<%} else { %>
			location.href="boardView.jsp?seq="+seq+"&pg="+pg;
		<%} %>
	}
</script>
</body>
</html>
