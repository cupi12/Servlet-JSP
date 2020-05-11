<%@page import="co.yedam.app.board.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>하준원</title>
</head>
<%@include file="/common/menu.jsp"%>
<body>
	<%
		if (loginId != null) {
	%>
	<a href="/edu/board/boardInsert.jsp"></a>
	<%
		}
	%>
	<h3>게시글 목록</h3>
	<table border="1" align="center">
		<tr>
			<td>제목</td>
			<td>내용</td>
			<td>작성자</td>
		</tr>
		<%
			ArrayList<BoardVO> boardList = (ArrayList<BoardVO>) request.getAttribute("boardList");
			for (BoardVO boardVO : boardList) {
		%>
		<tr>
			<td><%=boardVO.getTitle()%></td>
			<td><%=boardVO.getContents()%></td>
			<td><%=boardVO.getName()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>