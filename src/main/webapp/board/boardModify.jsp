<%@page import="board.dto.boardDTO"%>
<%@page import="board.dao.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

int seq = Integer.parseInt(request.getParameter("seq"));
int pg = Integer.parseInt(request.getParameter("pg"));
// 수정 폼으로 부터  입력받은 데이터 저장
String subject = request.getParameter("subject");
String title = request.getParameter("title");
String content = request.getParameter("content");

boardDAO boarddao = new boardDAO();
boardDTO boarddto = new boardDTO();

int su = boarddao.boardModify(subject, title, content, seq);

//보여지는 페이지에게 request로 넘기기 
request.setAttribute("pg", pg);
request.setAttribute("su", su);

RequestDispatcher dispatcher = request.getRequestDispatcher("../main/indexBoard.jsp?req=boardModifyResult");
dispatcher.forward(request,response);


%>