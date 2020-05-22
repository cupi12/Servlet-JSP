<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>하준원</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() { /* windowLoadEvent와 같음 */
		$("ul").on("mouseover", "li", function() { /* bind는 function을 걸어주는것 */
			$(this).css("backgroundColor", "green"); /* 이벤트가 발생한 테그 자체를 가리킨다 */
		});
		$('#btnAdd').bind("click", function() {
			$("ul").append($("<li>").html($("#title").val()));
			/* <>있으면 새로 태그를 만들고 , <>없으면, id값을 찾아가는것임 */
			/* juqery의 : html  == javascript의  : innterHTML      
			html("") == set기능, 해당 태그의 내용을 변경, html() == get기능
			.val()   -> javascript의   .value속성과 동일
				
			 */

		});
	});
</script>
</head>
<body>
	<input id="title">
	<button type="button" name="추가" id="btnAdd">추가</button>
	<ul>
		<li>jsp
		<li>java
		<li>jquery
	</ul>
</body>
</html>