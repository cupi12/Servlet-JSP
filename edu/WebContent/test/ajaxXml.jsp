<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>ajaxXml.jsp</title>
<script>
	function findNmae() {
	//1. XHR객체생성
	var xhr = new XmlHttpRequest();
	//2. 콜백함수 지정
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4 && xhr.status == 200){
			
		}
	}
	//3. 서버 연결
	xhr.open("get","");
	//4. server 전송
	xhr.send();
	}
</script>
</head>
<body>
	<form name="frm">
		<input name="id" id="id" onchange="findName()">
		<span id="result"></span>

	</form>
</body>
</html>