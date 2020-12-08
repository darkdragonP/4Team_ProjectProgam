<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css?after" />
<%@ include file="../../../common/top.jsp"%>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
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
								<strong><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;등록된</div>약
									관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
							</h3></li>
						<br>
						<br>
						<li><a href="AdminInsertMedicine.do"><span
								class="icon solid fa-th"><h6>신규 약 추가</h6></span></a></li>
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
						<br>
						<br>
						<br>

						<hr>

						<h6>
							<br> <br> <br>
							<li><a href="adminMain.do"> 관리자 홈 </a></li>
						</h6>
						<li><a href="main.jsp"><h6>메인 홈</h6></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- Page Content -->
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">약 세부사항</li>
			</ol>
		</div>
		<div class="row">
			<!-- Blog Entries Column -->
			<div class="col-md-8 blog-entries">
				<div id="container">

					<div id="content">

						<div class="section_wrap ">

							<div id="size_ct" class="size_ct_v2">
								<p class="thmb_desc">
								<h3>
									<strong>${medicine.getMdTitle()}
								</h3>
								</strong>
								</p>
								<div class="thmb thmb_border">
									<span class="img_box" style="width: 250px;"> <img
										src="${medicine.mdImage}" width="500" height="200"
										alt="${medicine.mdTitle}" />
										<div class="enlarge">
											<a href="${medicine.mdImage}" width="300%" height="300%">이미지
												크게보기</a>
										</div>
									</span>
								</div>
								<br>
								<p class="txt">
									<strong>· 식약처 분류 : </strong>${medicine.getMdClass()} <br>
									<strong>· 구분 : </strong> ${medicine.getMdGrade()} <br> <strong>·
										제조(수입) 업체명 : </strong> ${medicine.getMdComp()}
								</p>
								<hr>
								<br>
								<h3 class="stress" id="TABLE_OF_CONTENT1">외형정보</h3>
								<p class="txt">
									<strong>· 성상</strong> : ${medicine.getMdAppr()}<br> <strong>·
										제형</strong> : ${medicine.getMdType()}<br> <strong>· 모양</strong> :
									${medicine.getMdShape()}<br> <strong>· 색상</strong> :
									${medicine.getMdColor()}<br> <strong>· 약 분할선</strong> :
									${medicine.getMdLine()}
								</p>
								<br>
								<hr>
								<br>
								<h3 class="stress" id="TABLE_OF_CONTENT2">성분정보</h3>
								<p class="txt">${medicine.getMdIngd()}</p>
								<br>
								<hr>
								<br>
								<h3 class="stress" id="TABLE_OF_CONTENT3">저장방법</h3>
								<p class="txt">${medicine.getMdSave()}</p>
								<br>
								<hr>
								<br>
								<h3 class="stress" id="TABLE_OF_CONTENT4">효능효과</h3>
								<p class="txt">${medicine.getMdEffect()}</p>
								<br>
								<hr>
								<br>
								<h3 class="stress" id="TABLE_OF_CONTENT5">용법용량</h3>
								<p class="txt">${medicine.getMdCapa()}</p>
								<br>
								<hr>
								<br>
								<h3 class="stress" id="TABLE_OF_CONTENT6">사용상 주의사항</h3>
								<p class="txt">${medicine.getMdCapa()}</p>
							</div>
						</div>
					</div>
					<br>
					<hr>
					<br>
					<p class="copy_alert">위 이미지에 대한 권리는 출처사이트 게시자에게 있으며, 이를 무단 사용할
						경우 법적 책임을 질 수 있습니다.</p>

					<div class="section_group cite_group">
						<div class="section_area">
							<h3 class="title">출처</h3>
							<div class="cite_area_wrap  active">
								<div class="writer_area">
									<ul class="writer_list">
										<li>
											<div class="cite_area">
												<p class="writer_info">
													<strong> 제공처 </strong> <a href="http://www.health.kr/"
														target="_blank"
														onclick="nclk(this, 'soc.expertlogo', '', '', 1);"> <img
														src="https://dbscthumb-phinf.pstatic.net/2713_000_1/20170524221419866_TBGS1YWZ3.jpg/img_source.jpg?type=m1500"
														height="20" alt="약학정보원">
													</a><a href="https://naver.com/" target="_blank"
														onclick="nclk(this, 'soc.expertlogo', '', '', 1);"> <img
														src="images/naver.jpg" height="20" alt="네이버 의약품 사전"></a>
												</p>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<button type="button" style="align-items: right;"
						class="btn btn-primary"
						onclick="location.href='deleteAdminMedicine.do?mdIdx=${medicine.getMdIdx()}'">삭제</button>
					<button type="button" style="align-items: right;"
						class="btn btn-primary"
						onclick="location.href='updateAdminMedicine.do?mdIdx=${medicine.getMdIdx()}'">수정</button>
					<button type="button" style="align-items: right;"
						class="btn btn-primary"
						onclick="location.href='AdminMedicineList.do'">돌아가기</button>
				</div>
			</div>


			<!-- Sidebar Widgets Column -->
			<div class="col-md-4 blog-right-side">

				<!-- Side Widget -->
				<div class="card my-4">
					<h5 class="card-header">바로가기</h5>
					<div class="card-body">
						<div>
							<h4>제목</h4>
							뭘바로가기루 하징?
						</div>
					</div>
				</div>
				<div class="card my-4">
					<h5 class="card-header">바로가기</h5>
					<div class="card-body">
						<div>
							<h4>제목</h4>
							뭘바로가기루 하징?
						</div>
					</div>
				</div>
				<div class="card my-4">
					<h5 class="card-header">바로가기</h5>
					<div class="card-body">
						<div>
							<h4>제목</h4>
							뭘바로가기루 하징?
						</div>
					</div>
				</div>
			</div>


		</div>

	</div>

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