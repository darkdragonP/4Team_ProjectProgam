<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css?after" />
<%@ include file="../../../common/top.jsp"%>
<head>
<style>
.myButton {
	background-color: #77b55a;
	border-radius: 5px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Verdana;
	font-size: 12px;
	padding: 3px 6px;
	text-decoration: none;
}

.myButton:hover {
	background-color: #72b352;
}

.myButton:active {
	position: relative;
	top: 1px;
}

.myButton2 {
	background-color: #fc8d83;
	border-radius: 5px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Verdana;
	font-size: 12px;
	padding: 3px 6px;
	text-decoration: none;
}

.myButton2:hover {
	background-color: #e4685d;
}

.myButton2:active {
	position: relative;
	top: 1px;
}

.myButton3 {
	background-color: #b91a0c;
	border-radius: 5px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Verdana;
	font-size: 12px;
	padding: 3px 6px;
	text-decoration: none;
}

.myButton3:hover {
	background-color: #e4685d;
}

.myButton3:active {
	position: relative;
	top: 1px;
}

.myButton4 {
	background-color: #1362b7;
	border-radius: 5px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Verdana;
	font-size: 12px;
	padding: 3px 6px;
	text-decoration: none;
}

.myButton4:hover {
	background-color: #e4685d;
}

.myButton4:active {
	position: relative;
	top: 1px;
}

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
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/all.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/UserMainPay.css" />
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

						<li><a href="UserMain.do">사용자 홈</a></li>
						<li><a href="main.jsp">돌아가기</a></li>
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
												${selectUser.getuName()}<br> <br> <span>생일
													: ${selectUser.getuBirth()}</span> <br> <br> <span>이메일
													: ${selectUser.getuEmail()}</span> <br> <br> <span>OCR결제여부
													: ${selectUser.getOcrPay()}</span>

											</h2>

											<p>
												<a href="detailUser.do"><button class="btn-list">
														수정하기</button> </a>
											</p>
										</div>
									</div>
									<br>
									<hr>
									<br>

									<c:choose>
										<c:when test="${selectUser.getOcrPay() == 1}">
											<section id="type2" class="one dark cover"></section>
											<br>
											<div class="container py-5">

												<!-- For demo purpose -->
												<header class="text-center">
													<h2 class="display-4" style="color: #0b4877;">이미지로 약
														검색 하기</h2>
													<p class="lead mb-0" style="color: #0b4877;">사진을 업로드
														하시면 약 이름을 알려 드립니다.</p>
													<p class="" style="color: #0b4877;"></p>
													<img src="images/file-upload.svg" alt="" width="150"
														class="mb-4">
												</header>
												<div class="row py-4">
													<div class="col-lg-6 mx-auto">
														<!-- Uploaded image area-->
														<p class="font-italic text-center" style="color: #0b4877;">이미지를
															업로드 하시면 아래에 사진이 나타납니다.</p>
														<div class="image-area mt-4">
															<img id="imageResult" src="#" alt=""
																class="img-fluid rounded shadow-sm mx-auto d-block">
														</div>
														<br>
														<!-- Upload image input-->
														<form action="SearchOcr.do" enctype="multipart/form-data"
															method="post">
															<div
																class="input-group mb-3 px-2 py-2 rounded-pill bg-white shadow-sm">
																<input id="upload" name="uploadFile" type="file"
																	onchange="readURL(this);" class="form-control border-0">
																<label id="upload-label" for="upload"
																	class="font-weight-light text-muted">사진 선택하기</label>
																<div class="input-group-append">
																	<label for="upload"
																		class="btn btn-light m-0 rounded-pill px-4"> <i
																		class="fa fa-cloud-upload mr-2 text-muted"></i><small
																		class="text-uppercase font-weight-bold text-muted">사진
																			올리기</small></label> <input type="submit" value="검색" />
																</div>
															</div>

														</form>
														<table class="table table-striped">
															<thead>
																<tr>
																	<th>순번</th>
																	<th>약 이름</th>
																	<th></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td><img src="images/logo2.png" alt="공지"></td>
																	<td><b>비슷한 데이터를 가진 약 목록입니다.</b></td>
																	<td></td>
																</tr>
																<c:forEach items="${updList}" var="upd">
																	<tr>
																		<td>${upd.ocrIdx}</td>
																		<td><a href="#"></a>${upd.mdName}</td>
																		<td><a
																			href="SelectMedicine.do?mdIdx=${upd.mdIdx}"><button
																					class="myButton">상세</button></a>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</c:when>
										<c:otherwise>
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
															아래 링크를 통해 결제를 진행하면<br>HOMEDICINE의 약 이미지 검색 서비스를 이용할
															수 있습니다.
														</p>

													</div>
													<div class="col-md-6 center">
														<div class="pricing pricing-red">
															<img src="images/mobile-payment.svg" alt="">
															<p>
															<h4>￦9900 / Month</h4>
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
										</c:otherwise>
									</c:choose>
								</div>
								<c:choose>
									<c:when test="${selectUser.getOcrPay() == 1}">
										<br>
										<hr>
										<br>

										<section id="type3" class="one dark cover"></section>
										<br>
										<div class="col-md-8">
											<header class="text-center">
												<h3 class="display-4" style="color: #0b4877;">처방전 사진등록
													서비스</h3>
												<p class="lead mb-0" style="color: #0b4877;">간편하게 사진으로
													찍어 등록하세요.</p>
											</header>
											<br>

											<form action="InsertUpd.do" enctype="multipart/form-data"
												method="post">
												<input name="uploadFile" type="file">
												<button type="submit">등록하기</button>
											</form>
											<br>
											<table class="table table-striped">
												<thead>
													<tr>
														<th>순번</th>
														<th>약 이름</th>
														<th>등록 날짜</th>
														<th></th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><img src="images/logo2.png" alt="공지"
															class="icoNotice"></td>
														<td><b>등록하신 최신 순서 목록입니다.</b></td>
														<td></td>
														<td></td>
													</tr>
													<c:forEach items="${updList}" var="upd">
														<tr>
															<td>${upd.ocrIdx}</td>
															<td><a href="#"></a>${upd.mdName}</td>
															<td>${upd.ocrSearchDate}</td>
															<td><a href="SelectMedicine.do?mdIdx=${upd.mdIdx}"><button
																		class="myButton">상세</button></a> <a
																href="UserMediCompare.do"><button class="myButton2">비교</button></a>
																<a href="deleteOcr.do?ocrIdx=${upd.ocrIdx}"><button
																		class="myButton3">삭제</button></a></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<ul class="pagination">
												<c:if test="${mdBCounts.curRange ne 0}">
													<li class="page-item"><b class="page-link"><a
															href="UserMainPay.do?curRange=${mdBCounts.curRange}&result=1">이전</a></b></li>
												</c:if>
												<c:forEach var="pageNum" begin="${mdBCounts.startPage}"
													end="${mdBCounts.endPage}">
													<c:choose>
														<c:when test="${pageNum eq  mdBCounts.curPage}">
															<span style="font-weight: bold;"><b
																class="page-link" style="background-color: lightpink;"><a
																	href="UserMainPay.do?curPage=${pageNum}&curRange=${mdBCounts.curRange}&startp=${mdBCounts.startPage}"
																	onClick="fn_paging('${pageNum }')">${pageNum }</a></b></span>
														</c:when>
														<c:otherwise>
															<li><b class="page-link"> <a
																	href="UserMainPay.do?curPage=${pageNum}&curRange=${mdBCounts.curRange}&startp=${mdBCounts.startPage}">${pageNum}</a></b></li>
														</c:otherwise>
													</c:choose>
												</c:forEach>
												<c:if test="${mdBCounts.curRange+1 ne mdBCounts.rangeCnt}">
													<li class="page-item"><b class="page-link"><a
															href="UserMainPay.do?curRange=${mdBCounts.curRange}&result=2">다음</a></b></li>
												</c:if>
											</ul>
											<!-- <a href="UserPrescription.do"><button class="myButton4">등록한 전체목록 보러가기</button></a> -->
											<br>
											<hr>
											<br>
										</div>
									</c:when>
									<c:otherwise>
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
														<p>
															<img src="images/medical-prescription.svg" alt="">
														<p>
														<h4>￦9900 / Month</h4>
														<span>처방전 등록 기능을 활성화 하려면 <br>결제가 필요합니다.
														</span><br>
														<button type="button" class="btn-list-blue">HOMEDICINE
															구독하기</button>
													</div>
												</div>
											</div>
										</div>
									</c:otherwise>
								</c:choose>



							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<script>
		/*  ==========================================
		SHOW UPLOADED IMAGE
		 * ========================================== */
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#imageResult').attr('src', e.target.result);
				};
				reader.readAsDataURL(input.files[0]);
			}
		}

		$(function() {
			$('#upload').on('change', function() {
				readURL(input);
			});
		});

		/*  ==========================================
		    SHOW UPLOADED IMAGE NAME
		 * ========================================== */
		var input = document.getElementById('upload');
		var infoArea = document.getElementById('upload-label');

		input.addEventListener('change', showFileName);
		function showFileName(event) {
			var input = event.srcElement;
			var fileName = input.files[0].name;
			infoArea.textContent = 'File name: ' + fileName;
		}
	</script>
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