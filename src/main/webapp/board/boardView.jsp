<%@page import="board.dto.boardDTO"%>
<%@page import="board.dao.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//req 로 받은 게시글 고유의 seq 번호를 받아 pg 페이지에 보여질거임 
int seq = Integer.parseInt(request.getParameter("seq"));
int pg = Integer.parseInt(request.getParameter("pg"));

boardDAO boarddao = new boardDAO();


//DB로부터 게시글 내용을 가져오기 전에 조회수 올리기 
boarddao.updateHit(seq);

// seq 로 DB에서 select 데이터 찾아오기  
boardDTO boarddto = boarddao.boardView(seq);

// boardviewresult 에 표시될 데이터 request로 넘겨주기 
request.setAttribute("seq",seq);
request.setAttribute("pg",pg);
request.setAttribute("boarddto",boarddto);


RequestDispatcher dispatcher = request.getRequestDispatcher("../main/indexBoard.jsp?req=boardViewResult");
dispatcher.forward(request,response);



%>