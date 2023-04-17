<%@page import="user.dto.userDTO"%>
<%@page import="user.dao.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--  수정 회원정보 데이터만 처리하는 파일  -->
<% 
//로그인 된 id 정보 
String id = (String)session.getAttribute("memberId");

//현재 접속된 id 데이터 가져오기
userDAO userdao = new userDAO();
//DTO에 로그인된 id 정보를 넘겨줘서 dao의 메서드로 가져온 회원정보 저장 
userDTO userdto = userdao.getUserInfo(id);

//DTO에 저장한 회원정보 변수로 만들어서 request로 담아 보내기(데이터랑 같이 페이지 넘겨주기)
//String id = userdto.getId(); >> 로그인 된 id 정보는 이미 session으로 가져옴 
String name= userdto.getName();
String pwd= userdto.getPwd();
String email= userdto.getEmail();
String tel = userdto.getTel();
String tel_1 = tel.substring(0, 3);
String tel_2 = tel.substring(4, 8);
String tel_3 = tel.substring(9);

//request에 추가 
request.setAttribute("name",name);
request.setAttribute("id",id);
request.setAttribute("pwd",pwd);
request.setAttribute("email",email);
request.setAttribute("tel_1",tel_1);
request.setAttribute("tel_2",tel_2);
request.setAttribute("tel_3",tel_3);

RequestDispatcher dispatcher = request.getRequestDispatcher("../user/modifyForm.jsp");
dispatcher.forward(request,response);
%>