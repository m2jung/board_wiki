<%@page import="board.dto.boardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.dao.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  페이지를 보여주는 데이터를 가짐 -->
<% 
// 해당 페이지의 목록을 가져올 수 있게하는 변수 
int pg = Integer.parseInt(request.getParameter("pg"));

int article = 3 ;  // 한 페이지 글 목록수
int currentPage = pg;  // 현재 페이지
int startNum = (currentPage - 1) * article + 1; // 시작 글번호
int lastNum = startNum + article - 1;           // 마지막 글번호

// list 객체로 현재 머무는 페이지의 데이터  
boardDAO boarddao = new boardDAO();
ArrayList<boardDTO> list = boarddao.boardList(startNum, lastNum);

// db 안에 모든 데이터  불러오기 
int totalArticle = boarddao.getTotalArticle(); // 전체 글수
int totalPage = (totalArticle - 1)/article + 1; // 전체 페이지 수

int block = 3; // 페이지 블록
int startPage = (currentPage - 1)/block * block + 1;
int endPage = startPage + block - 1;
if(endPage > totalPage) endPage = totalPage;

//넘겨줄 값 (결과 화면에 보여질 값)
request.setAttribute("pg", pg);
request.setAttribute("list", list);
request.setAttribute("totalPage", totalPage);
request.setAttribute("startPage", startPage);
request.setAttribute("endPage", endPage);
request.setAttribute("block", block);

//index에 boardListResult 넘기기
RequestDispatcher dispatcher = request.getRequestDispatcher("../main/indexBoard.jsp?req=boardListResult");
dispatcher.forward(request,response);
%>
