<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>BootStrap Test</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">

		<!-- Header 시작 -->
		<div class="alert alert-primary" role="alert">
			A simple primary alert—check it out! <a href="#"
				class="btn btn-success"> 도움말 </a> <span class="btn btn-success">메인</span>
			<!-- Button -->
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModal">Launch demo modal</button>
		</div>
		<!-- Header끝 -->

		<!-- Body시작 -->
		<div class="row">
			<div class="col-xl-6 col-md-12 border border-info">
				메뉴
				<table class="table table-striped " border="1">
					<tr>
						<th>1</th>
						<th>2</th>
						<th>3</th>
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
			</div>
			<div class="col-xl-6 col-md-12 border">
				내용
				<form>
					<div class="form-group row">
						<label class="cal-xl-3 col-md-12">id:</label>
						<div class="col-xl-9 col-md-12">
							<input class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="cal-3">name:</label><input class="form-control">
					</div>
					<div class="form-group">
						<label>수신여부</label><input type="checkBox" class="form-control">
					</div>

				</form>
			</div>
		</div>
		<!-- Body끝 -->

		<!-- Footer 시작 -->
		<div class="row">
			<div class="col-xl-4">One of three columns</div>
			<div class="col-xl-4">One of three columns</div>
			<div class="col-xl-4">One of three columns</div>
		</div>
		<!-- Footer끝 -->

	</div>
	<!-- end of class Container -->
	<!-- Modal시작 -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal끝 -->

</body>
</html>