<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWriteForm.jsp</title>
<link rel="stylesheet" href="../css/indexBoard.css">
</head>
<body>
	<div class="screen-board">
		<h1>글쓰기</h1>
		<div class="screen-board_form">
			<form action="boardWrite.jsp" method="post" name="boardWriteForm">
			<table>
				<tr>
					<td><select name="subject">
							<option value="java"> JAVA </option>
							<option value="html"> HTML/CSS </option>
							<option value="js"> JavaScript </option>
							<option value="jsp"> JSP </option>
							<option value="sql"> SQL </option>
						</select>
						<input type="text" name="subject" size="71"  placeholder="제목을 입력하세요" required />
					</td>
				</tr>
				<tr>
					<td>
						<textarea rows="30" cols="70" name="contents" required></textarea> 
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