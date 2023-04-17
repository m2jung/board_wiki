<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//session 종료 삭제 무효화
session.removeAttribute("memberId");
session.removeAttribute("memberName");
session.invalidate();

//Result 페이지에서 로그아웃 처리
RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=logOutResult");
dispatcher.forward(request,response);

%>


