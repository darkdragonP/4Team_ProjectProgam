<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css?after" />
<%@ include file="../../../common/top.jsp"%>
<head>
<style>
.btn-list {
	background-color: #0b4877;
	border-radius: 5px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Verdana;
	font-size: 15px;
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
	font-size: 15px;
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

ul {
	list-style: none;
}
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/all.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/UserMain.css" />
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
						<li>
							<h2>
								<strong><div align="left" style="color: #EF746F;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사용자</div>페이지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
							</h2>
						</li>
						<br>
						<br>
						<c:if test="${user != null}">
							<li><a href="detailUser.do?uIdx=${user.uIdx}" id="top-link"><span
									class="icon solid fa-th"><h6>
											회원정보<br> 수정
										</h6></span></a></li>
						</c:if>
						<hr>
						<li><a href="#type1" id="about-link"><span
								class="icon solid fa-th"><h6>
										회원정보 <br>수정
									</h6></span></a></li>
						<hr>
						<li><a href="#type2" id="about-link"><span
								class="icon solid fa-th"><h6>
										약 이미지<br> 검색
									</h6></span></a></li>
						<hr>
						<li><a href="#type3" id="about-link"><span
								class="icon solid fa-th"><h6>
										처방전<br>등록
									</h6></span></a></li>
						<hr>
						<br>
						<br>
						<br>

						<li><a href="UserMain.do"><h6>사용자 홈</h6></a></li>
						<li><a href="main.jsp"><h6>돌아가기</h6></a></li>
					</ul>
				</nav>

			</div>
		</div>




		<!-- Page Content -->
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">마이 페이지</li>
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
									<!-- 회원정보 수정 -->
									<section id="type1" class="one dark cover"></section>
									<br>
									<div class="card">
										<div class="box">
											<div class="img">
												<img src="images/board1.jpg">
												<!-- 프로필 이미지 첨부 -->
											</div>
											<h2>
												회원이름<br> <br> <span>회원생일</span>
											</h2>
											<br>
											<p>
												<a href="detailUser.do"><button class="btn-list">
														수정하기</button> </a>
											</p>
										</div>
									</div>
									<br>
									<hr>
									<br>

									<section id="type2" class="one dark cover"></section>
									<br>
									<div id="pricing">
										<div class="pricing-bg">
											<div class="heading">
												<h2>
													지금 <strong style="color: #EF746F;">HOMEDICINE</strong>를
													구독하세요!
												</h2>
												<P>
												<p>
													아래 링크를 통해 결제를 진행하면<br>HOMEDICINE의 약 이미지 검색 서비스를 이용할 수
													있습니다.
												</p>
												</P>

											</div>
											<div class="col-md-6 center">
												<div class="pricing pricing-red">
													<img src="images/mobile-payment.svg" alt=""> 
													<p><h4>￦9900 / Month</h4>
													<span>이런 분들에게 유용합니다!</span>
													<ul class="pricing-features">
														<li>구급상자 속 오래된 약 이름이 궁금할 때</li>
														<li>약 봉지 정보 외에 더 많은 정보가 알고 싶을 때</li>
														<li>제네릭 약품의 성분을 비교하고 싶을 때</li>
														<li>처방 받은 약의 부작용을 알아두고 싶을 때</li>
													</ul>
													<button type="button" class="btn-list">HOMEDICINE
														구독하기</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<br>
								<hr>
								<br>
								<section id="type3" class="one dark cover"></section>
								<br>
								<div id="pricing">
										<div class="pricing-bg">
											<div class="heading">
												<h2>
													지금 <strong style="color: #0b4877;">HOMEDICINE</strong>를
												구독하세요!
												</h2>
												<P>
												<p>
													아래 링크를 통해 결제를 진행하면<br>HOMEDICINE의 처방전등록 서비스를 이용할 수
												있습니다.
												</p>

											</div>
											<div class="col-md-6 center">
												<div class="pricing pricing-blue">
													<p><img src="images/medical-prescription.svg" alt="">
												<p><h4>￦9900 / Month</h4>
												<span>처방전 등록 기능을 활성화 하려면 <br>결제가 필요합니다.
												</span><br>
													<button type="button" class="btn-list-blue">HOMEDICINE
														구독하기</button>
												</div>
											</div>
										</div>
									</div>
								</div>
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