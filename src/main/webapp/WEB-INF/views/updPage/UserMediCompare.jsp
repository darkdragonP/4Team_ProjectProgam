<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css?after" />
<head>
<style>
html, body {
	height: 100%;
	overflow: hidden;
}

ul {
	list-style: none;
}

.btn-list {
	background-color: #0b4877;
	border-radius: 5px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Verdana;
	font-size: 20px;
	padding: 6px 12px;
	text-decoration: none;
}

.btn-list:hover {
	background-color: #0b4877;
}

.btn-list:active {
	position: relative;
	top: 1px;
}

.btn-list-blue {
	background-color: #EF746F;
	border-radius: 5px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Verdana;
	font-size: 20px;
	padding: 6px 12px;
	text-decoration: none;
}

.btn-list-blue:hover {
	background-color: #EF746F;
}

.btn-list-blue:active {
	position: relative;
	top: 1px;
}
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/all.css" />
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<div class="container" align="center">
		<div class="breadcrumb-main">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><h3 style="color: white;">처방약
						비교 페이지</h3></li>
			</ul>
		</div>
		<br>
		<div>
			<h4>(username)님이 (처방날짜)에 처방받은 (약이름)입니다.</h4>
			아래 버튼을 클릭하시면 성분 혹은 효능이 같은 다른 약을 확인하실 수 있습니다.
		</div>
		<br>
		<br>
		<div>
			<a href="#"><button class="btn-list">성분으로 비교하기</button> </a>&nbsp; <a
				href="#"><button class="btn-list-blue">효능으로 비교하기</button> </a>
		</div>
		<br>
		<br>
		<br>
		<div class="row">
			<br>
			<div class="col-md-6" style="float: left;">
				<iframe src="UserMedicineDetail.do"
					style="width: 100%; height: 500px;"></iframe>
			</div>

			<div class="col-md-6" style="float: left;">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>순서</th>
							<th>약 이름</th>
							<th>주요 성분 명</th>
							<th>사용자 별점</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td><a href="#">게보린 </a></td>
							<td>아세트아미노펜 300mg</td>
							<td>★★★☆☆</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>