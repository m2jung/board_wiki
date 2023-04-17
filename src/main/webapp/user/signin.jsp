<!-- member/login.jsp -->

<%@page import="java.net.URLEncoder"%>
<%@page import="user.dao.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

userDAO userdao = new userDAO();
String name = userdao.login(id, pwd);
if(name != null){
	// session 설정
	session.setAttribute("memberId", id);
	session.setAttribute("memberName", name);

	RequestDispatcher dispatcher = request.getRequestDispatcher("../user/loginOk.jsp");
	dispatcher.forward(request,response);
} else {
	//response.sendRedirect("loginFail.jsp");
	RequestDispatcher dispatcher = request.getRequestDispatcher("../user/loginFail.jsp");
	dispatcher.forward(request,response);
}
%>
