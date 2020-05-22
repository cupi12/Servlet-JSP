<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>하준원</title>
<!-- window.addEventListener("load",init);
	
	function init(){
	
		var movieDiv = document.getElementById("result");
		movieDiv.style.display = "none";

		var btnView = document.getElementById("btn");
		btnView.addEventListener("click", function(){			
			movieDiv.style.display = "";
		});
	}  -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		$("#result").hide();
		$("#btn").bind("click", function() {/*  ==  $("#btn").click(function() { *   똑같음/
			$("#result").show(2000);
		});

		/* getElementById == $('') */
	});
</script>
</head>
<body>
	<button type="button" id="btn">보이기</button>
	<div id="result">영화상세정보</div>
	<input name="userid">
	<input name="userpw">
	<table class="table table-striped " border="1">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
	</table>
</body>
</html>