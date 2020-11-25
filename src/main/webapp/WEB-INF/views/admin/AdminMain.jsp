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
								<strong><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;관리자</div>페이지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
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
						<li><a href="#type5" id="about-link"><span
								class="icon solid fa-th"><h6>결산</h6></span></a></li>
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
									<br>
									<hr>
									<br>
									<section id="type1" class="one dark cover"></section>
									<br>
									<hr>
									<br>

									<section id="type2" class="one dark cover"></section>
									<br>
									<hr>
									<br>
									<section id="type3" class="one dark cover"></section>
									<br>
									<hr>
									<br>
									<section id="type4" class="one dark cover"></section>
									<br>
									<hr>
									<br>
									<section id="type5" class="one dark cover"></section>
									<br>
									<hr>
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