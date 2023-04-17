<%@page import="user.dao.userDAO"%>
<%@page import="user.dto.userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%    
request.setCharacterEncoding("utf-8");

//form 입력값 가져와 변수 선언 
String name = request.getParameter("name");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String email = request.getParameter("email");
String tel = request.getParameter("tel_1")+"-"+request.getParameter("tel_2")+"-"+request.getParameter("tel_3");

//변수 set으로 DTO객체에 데이터 저장 
userDTO userdto = new userDTO();
userdto.setName(name);
userdto.setId(id);
userdto.setPwd(pwd);
userdto.setEmail(email);
userdto.setTel(tel);

//데이터가 들어있는 DTO를 매개변수로 DAO 회원가입 메서드 실행 
//데이터베이스에 회원정보 행이 추가되면 true 성공 
userDAO userDAO = new userDAO();
int su = userDAO.signup(userdto);

request.setAttribute("su", su);
request.setAttribute("id", id);
request.setAttribute("name", name);

RequestDispatcher dispatcher = request.getRequestDispatcher("../user/signupResult.jsp");
dispatcher.forward(request,response);


%>


