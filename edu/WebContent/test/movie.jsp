<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>하준원</title>
<script>
	function getBoxOffice() {
		//1. XHR객체생성
		var xhr = new XMLHttpRequest();
		//2. 콜백함수 지정
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var obj = JSON.parse(xhr.responseText);		//string -> JSON으로 parse
				for(i=0; i<obj.boxOfficeResult.dailyBoxOfficeList.length; i++){
					result.innerHTML += obj.boxOfficeResult.dailyBoxOfficeList[i].movieNm + "<br>"
					}
				console.dir(obj);
				//var movie = for(i=0; i<10; i++){ console.log(boxOfficeREsult.dailyBoxOfficeList.movieNm[i]);}
			}
		}
		//3. 서버 연결	
		xhr.open("get", "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20200517"); //id속성이 있으면 id.value로 추가해줘도된다.
		//4. server 전송
		xhr.send();
	}
</script>
</head>
<body>

	<button type="button" onclick="getBoxOffice()">박스오피스 조회</button>
	<div id="result"></div>
</body>
</html>