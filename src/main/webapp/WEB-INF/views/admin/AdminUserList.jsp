<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css?after" />
<%@ include file="../../../common/top.jsp"%>

<head>
<meta charset="EUC-KR">
<title>MEDICINE</title>
</head>
<body>
	<div class="container" align="center">
		<!-- Header -->
		<div id="header">

			<div class="top">

				<!-- Logo -->
				<div id="logo">
					<h1 id="title"></h1>
				</div>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><h3>
								<strong>게시판 · 회원 관리</strong>
							</h3></li>
						<br>
						<span style="float:left;"><h4><strong>※게시글 정책</strong></h4></span>
						<br>
						<br>
						<li><a href="boardList.do"><span
								class="icon solid fa-th"><h6>전체 게시글 보기</h6></span></a></li>
						<hr>
						<li><a href="boardList.do"><span
								class="icon solid fa-th"><h6>신고가 접수된 게시글 보기</h6></span></a></li>
						<br>		
						<span style="float:left;"><h4><strong>※회원 정책</strong></h4></span>
						<br>
						<br>
						<li><a href="boardList.do"><span
								class="icon solid fa-th"><h6>회원 조회</h6></span></a></li>
						<hr>
						<li><a href="AdminUserDetail.do"><span
								class="icon solid fa-th"><h6>회원 차단 / 삭제</h6></span></a></li>
						<hr>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>


						<hr>
						<li><a href="adminMain.do"><h6>관리자 홈 돌아가기</h6></a></li>
						<li><a href="main.jsp"><h6>메인 홈으로 돌아가기</h6></a></li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Page Content -->
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">게시판 · 회원 관리</li>
			</ol>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>이미지</th>
					<th>이름</th>
					<th>내용</th>
					<th>평균별점</th>
					<th>조회수</th>
				</tr>
			</thead>
			<c:forEach items="${medicineList}" var="medicine">
				<tbody>
					<tr>
						<td>${medicine.mdImage}</td>
						<td><a href="SelectMedicine.do?mdIdx=${medicine.mdIdx}">${medicine.mdTitle}</td>
						<td>${medicine.mdAppr}</td>
						<td>[별점이미지]&nbsp;<!--${medicine.mdRating} --></td>
						<td>${medicine.mdHits}</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
	<!-- Scripts -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/jquery.scrolly.min.js"></script>
	<script src="js/jquery.scrollex.min.js"></script>
	<script src="js/browser.min.js"></script>
	<script src="js/breakpoints.min.js"></script>
	<script src="js/util.js"></script>
	<script src="js/main.js"></script>
</body>
<%@ include file="../../../common/bottom.jsp"%>
</html>