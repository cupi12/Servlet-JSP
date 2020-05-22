<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form Test</title>
<script>
	function idDupCheck() {
		//1.xhr 객체를 생성한다.
		var xhttp = new XMLHttpRequest();
		//2. onreadystatechange가 발생하면 function을 수행하라. 콜백 함수를 지정해줌.
		xhttp.onreadystatechange = function() { //fuction() =>콜백함수
			if (this.readyState == 4) {//응답 완료
				//getElementById() 태그에 id값을 넣어야함.여기선 <span id="result">값을 넣어줌
				if (this.status == 200) {//정상실행
					console.log("ajax 요청 완료");
					document.getElementById("result").innerHTML = this.responseText;
				} else {
					document.getElementById("result").innerHTML = this.status
							+ this.statusText;
				}
			} else {
				//readyState가 4가 아니면, 로딩중 이미지를 출력
				document.getElementById("result").innerHTML = "로딩중";
			}
		};
		//3. 서버 연결  "get"방식, "서버요청주소"
		var param = "id=" + document.frm.id.value;
		xhttp.open("POST", "../IdDupCheck.do", true); //true = 비동기식 false = 동기식     *(비동기 여부를 물어봄)
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		//4. 서버 전송
		xhttp.send(param);
		console.log("ajax 요청 시작");
	}
</script>
</head>
<body align="center">
	<!-- Navigation bar -->
	<%@include file="/common/menu.jsp"%>
	<h3>회원정보</h3>
	<form action="../MemberInsert.do" method="post" name="frm">
		ID : <input type="text" name="id" id="id" onchange="idDupCheck()" />
		<span id="result"></span> <br /> 비밀번호 : <input type="text" name="pwd"
			id="pwd"> <br> 이름 : <input type="text" name="name"
			id="name"> <br> 취미 : <input type="checkbox" name="hobby"
			value="h01" />등산 <input type="checkbox" name="hobby" value="h02" />운동
		<input type="checkbox" name="hobby" value="h03" />독서 <input
			type="checkbox" name="hobby" value="h04" />여행<br> 성별 : <input
			type="radio" name="gender" value="m" />남자 <input type="radio"
			name="gender" value="f" />여자<br> 종교 : <select name="religion"
			id="religion">
			<option value="r01">기독교
			<option value="r02">불교
			<option value="r03">천주교
			<option value="r04">무교
		</select><br> 자기소개:<br>
		<textarea cols="30" rows="10" name="introduction" id="introduction"></textarea>
		<br> <input type="submit" value="전송"><input type="reset"
			value="지우기">

	</form>

</body>
</html>