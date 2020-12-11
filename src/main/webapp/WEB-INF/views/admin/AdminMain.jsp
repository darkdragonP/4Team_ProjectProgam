<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css?after" />
<%@ include file="../../../common/top.jsp"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="is-preload">
	<div class="container" align="center">
		<!-- Header -->
		<div id="header">

			<div class="top">

				<!-- Logo -->
				<div id="logo">
					<h1 id="title"></h1>
				</div>

				<nav id="nav">
					<ul>
						<li><h2>
								<strong><div align="left" style="color: #EF746F;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;관리자</div>페이지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
							</h2></li>
						<br>
						<br>
						<li><a href="GoogleAnalytics.do" id="top-link"><span
								class="icon solid fa-th"><h6>Google Analytics</h6></span></a></li>
						<hr>
						<li><a href="AdminMedicineList.do" id="about-link"><span
								class="icon solid fa-th"><h6>약 리스트 관리</h6></span></a></li>
						<hr>
						<li><a href="#type3" id="about-link"><span
								class="icon solid fa-th"><h6>공지사항 관리</h6></span></a></li>
						<hr>
						<li><a href="#type4" id="about-link"><span
								class="icon solid fa-th"><h6>QnA 관리</h6></span></a></li>
						<hr>
						<li><a href="manageBoard.do" id="about-link"><span
								class="icon solid fa-th"><h6>게시판 관리</h6></span></a></li>
						<br>
						<br>
						<br>

						<hr>
						<li><a href="adminMain.do"><h6>관리자 홈</h6></a></li>
						<li><a href="main.jsp"><h6>메인 홈</h6></a></li>
					</ul>
				</nav>

			</div>
		</div>

		<!-- Page Content -->
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">관리자 페이지</li>
			</ol>

		</div>
		<div class="row">
			<!-- Blog Entries Column -->
			<div class="col-md-12">
				<div id="container">
					<div id="content">
						<div class="section_wrap ">

							<div id="size_ct" class="size_ct_v2">
								<div class="att_type">
									<!-- <section id="type1" class="one dark cover"></section> -->
									
		<!-- Page Content -->
		<div style="width:50%; float:left; display:inline;">
		<strong><h5>약 리스트 관리</h5></strong>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>No</th>
					<th>이름</th>
					<th>내용</th>
					<th>평균별점</th>
					<th>조회수</th>
				</tr>
			</thead>
			<c:forEach items="${AdminMedicineList}" var="adminMedicine">
				<tbody>
					<tr>
						<td>${adminMedicine.mdImage}</td>
						<td><a
							href="SelectAdminMedicine.do?mdIdx=${adminMedicine.mdIdx}">${adminMedicine.mdTitle}</a></td>
						<td>${adminMedicine.mdAppr}</td>
						<td>[별점이미지]&nbsp;<!--${medicine.mdRating} --></td>
						<td>${adminMedicine.mdRating}</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
		</div>
		&nbsp;
			
		<div style="width:49%; float:right; display:inline;">
		<strong><h5>게시판 관리</h5></strong>
		<table class="table table-striped">
			<thead align="center">
				<tr>
					<th>No</th>
					<th>제목</th>
					<th>작성일</th>
					<th>작성자</th>
					<th>조회</th>
					<th>좋아요</th>
					<th>신고누적</th>
				</tr>
			</thead>
			<c:forEach items="${boardList}" var="board">
				<form name="del_${board.bIdx}" action="deletCryBoard.do" method="post">
					<input type="hidden" name="bIdx" value="${board.bIdx}">
					<input type="hidden" name="startC" value="${mdBCounts.startC}">
					<input type="hidden" name="endC" value="${mdBCounts.endC}">
				</form>
				<tbody align="center">
					<tr>
						<td>${board.bIdx}</td>
						<td>${board.bTitle}</td>
						<td>${board.bDate}</td>
						<td>${board.uName}</td>
						<td>${board.bHits}</td>
						<td>${board.bRating}</td>
						<td>${board.bCry}</td>
						<td><input type="button"
							onclick="location='javascript:document.del_${board.bIdx}.submit();'" value="삭제"/></td>
						<td><input type="button"
							onclick="location.href='selectBoard.do?bIdx=${board.bIdx}'" value="바로가기"/></td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
		</div>
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
									<br>
									<br>
									<br>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
<!--footer starts from here-->
<%@ include file="../../../common/bottom.jsp"%>
</html>