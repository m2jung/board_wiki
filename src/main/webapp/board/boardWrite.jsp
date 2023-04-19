<%@page import="board.dto.boardDTO"%>
<%@page import="board.dao.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

// 입력받은 데이터 저장 
String id = (String)session.getAttribute("memberId");
String name = (String)session.getAttribute("memberName");
String subject = request.getParameter("subject");
String title = request.getParameter("title");
String content = request.getParameter("content");

//dto에 데이터 저장 
boardDTO boarddto = new boardDTO();
boarddto.setId(id);
boarddto.setName(name);
boarddto.setSubject(subject);
boarddto.setTitle(title);
boarddto.setContent(content);

//dto를 통해 db에 저장 
boardDAO boarddao = new boardDAO();
int su = boarddao.boardwrite(boarddto);

//request에 저장후 페이지 이동 
request.setAttribute("su", su);
request.setAttribute("id", id);
request.setAttribute("name", name);


RequestDispatcher dispatcher = request.getRequestDispatcher("../main/indexBoard.jsp?req=boardWriteResult");
dispatcher.forward(request,response);
%>
