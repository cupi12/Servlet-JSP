<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원관리</title>
</head>
<body>
	<a href=""> 등록</a>
	<br>
	<a href=""> 목록</a>
	<br>
	<form action="/edu/MemberUpdateForm.do">
		<input name="id" />
		<button>수정</button>
	</form>
	<form action="/edu/MemberDelete.do">
		<input name="id" />
		<button>삭제</button>
	</form>
</body>
</html>