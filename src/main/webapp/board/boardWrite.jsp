<%@page import="board.dto.boardDTO"%>
<%@page import="board.dao.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");


String id = (String)session.getAttribute("memberId");
String subject = request.getParameter("subject");
String contents = request.getParameter("content");

boardDTO boarddto = new boardDTO();
boarddto.setId(id);
boarddto.setSubject(subject);
boarddto.setContents(contents);


boardDAO boarddao = new boardDAO();

int su = boarddao.write(boarddto);





%>