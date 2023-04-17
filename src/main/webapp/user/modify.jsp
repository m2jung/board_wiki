<%@page import="user.dto.userDTO"%>
<%@page import="user.dao.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");

String id = (String)session.getAttribute("memberId");
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");
String email = request.getParameter("email");
String tel = request.getParameter("tel_1")+"-"+request.getParameter("tel_2")+"-"+request.getParameter("tel_3");

userDAO userdao = new userDAO();
userDTO userdto = new userDTO();
userdto.setId("id");
userdto.setName("name");
userdto.setPwd("pwd");
userdto.setEmail("email");
userdto.setTel("tel");

int su = userdao.modify(userdto);

request.setAttribute("su",su);
RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=modifyResult");
dispatcher.forward(request,response);





%>