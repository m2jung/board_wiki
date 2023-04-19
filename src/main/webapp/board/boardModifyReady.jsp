<%@page import="board.dto.boardDTO"%>
<%@page import="board.dao.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- ModifyForm 에 입력되어 있는 데이터 보여주는 페이지 -->
<%
int seq = Integer.parseInt(request.getParameter("seq"));
int pg = Integer.parseInt(request.getParameter("pg"));

boardDAO boarddao = new boardDAO();
boardDTO boarddto = boarddao.boardView(seq);

//보여지는 페이지에게 request로 넘기기 
request.setAttribute("seq", seq);
request.setAttribute("pg", pg);
request.setAttribute("boarddto", boarddto);

RequestDispatcher dispatcher = request.getRequestDispatcher("../main/indexBoard.jsp?req=boardModifyForm");
dispatcher.forward(request,response);
%>
