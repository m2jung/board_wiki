<%@page import="user.dto.userDTO"%>
<%@page import="user.dao.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

String id = (String)session.getAttribute("memberId");

// 현재 접속된 id 데이터 가져오기
userDAO memberDAO = new userDAO();
userDTO memberDTO = memberDAO.getUserInfo(id);

String tel = memberDTO.getTel();
String tel_1 = tel.substring(0, 3);
String tel_2 = tel.substring(4, 8);
String tel_3 = tel.substring(9);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/sign.css">
<title>modifyForm.jsp</title>
</head>
<body>
	<div class="screen_signup">
		<div class="screen_signup-form">
			<form action="../user/modify.jsp" method="post" name="modifyForm">
				<h2>회원정보 수정</h2>
				<p>* Name <br><input type=text name="name" value="${name}" required/></p>
				<p>* Id <br><input type=text name="id" size="15" value="${id}" readonly/>
				<p>* Password <br><input type=password name="pwd" value="${pwd}" required/></p>
				<p>* E-mail <br><input type=text name="email" value="${email}" required/></p>
				<p>* Tel <br>
				<input type=text name="tel_1" size="4" value="${tel_1}" required/> -
				<input type=text name="tel_2" size="5" value="${tel_2}" maxlength="4" required/> -
				<input type=text name="tel_3" size="5" value="${tel_3}" maxlength="4" required/> 
				</p>
		</div>
			<div class="screen_signup-btn">
				<input type="submit" value="수정"/>
			</div>	
			</form>
	</div>	
</body>
</html>