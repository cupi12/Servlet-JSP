<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>ajaxXml.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function findNameJquery() {
		//1. load함수
		/* $("#result").load("../FindNameJson?id=" + id.value, function() {
			alert("end");
		}); */
		
		//2. getJson
		/* $.getJSON("../FindNameJson", {id:id.value}, function(r){
			$("#result").html(r.name);
		});	 */
		
		//3. ajax호출
		$.ajax({
			url :"../FindNameJson",
				data:{id:id.value},
				dataType : "json",
				success : function(r){
					$("#result").html(r.name);
				},
				async : false
		});
		
	}

	function findName() {
		//1. XHR객체생성
		var xhr = new XMLHttpRequest();
		//2. 콜백함수 지정
	 	xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var obj = JSON.parse(xhr.responseText);
				result.innerHTML = obj.id + " : " + obj.name; 
				
	
			}
		}
		//3. 서버 연결	
		xhr.open("get", "../GetEmpCnt.do" + id.value); //id속성이 있으면 id.value로 추가해줘도된다.
		//4. server 전송
		xhr.send();
	}
</script>
</head>
<body>

	<form name="frm">
		<input name="id" id="id" onchange="findNameJquery()"> <span
			id="result"></span>

	</form>
</body>
</html>