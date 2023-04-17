<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@page import="java.net.URLDecoder"%>
<%
// session 값 사용
String id = (String)session.getAttribute("memberId");
String name = (String)session.getAttribute("memberName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk.jsp</title>
</head>
<body>
	<script type="text/javascript">
		(function() {
		alert(`안녕하세요! <%=name%> 님 :D`);
		location.href="../main/index.jsp";			
		})();
		</script>
</body>
</html>