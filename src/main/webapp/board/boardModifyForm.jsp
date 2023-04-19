<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWriteForm.jsp</title>
<link rel="stylesheet" href="../css/indexBoard.css">
</head>
<body>
	<div class="screen-board">
		<div class="screen-board_form">
		<h1>---------------- 글쓰기 ----------------</h1>
			<form action="../board/boardModify.jsp" method="post" name="boardModifyForm">
			<table>
				<tr>
					<td><select name="subject">
							<option value="java"> JAVA </option>
							<option value="html"> HTML/CSS </option>
							<option value="js"> JavaScript </option>
							<option value="jsp"> JSP </option>
							<option value="sql"> SQL </option>
						</select>
						<input type="text" name="title" size="71"  placeholder="${boarddto.title}" required />
					</td>
				</tr>
				<tr>
					<td>
						<textarea rows="30" cols="70" name="content" placeholder="${boarddto.content}" required></textarea> 
					</td>
				</tr>
					<td colspan="2" align="end">
						<input type="button" value="임시저장">
						<input type="submit" value="작성완료">
					</td>
			</table>
			</form>
		</div>
	</div>
</body>
</html>