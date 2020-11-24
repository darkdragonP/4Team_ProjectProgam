<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../../../common/top.jsp"%>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="container">

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
								<div class="att_type">
									<div class="inner_att_type">
										<p class="thmb_desc">
										<h3>
											<strong>${medicine.getMdTitle()}
										</h3>
										</strong>
										</p>
										<div class="thmb thmb_border">
											<span class="img_box" style="width: 250px;"> <img
												src="images/1.jpg" width="500" height="200"
												alt="${medicine.mdTitle}" />
												<div class="enlarge">
													<a href="images/1.jpg" width="300%" height="300%">이미지
														크게보기</a>
												</div>
											</span>
										</div>
										<div class="wr_tmp_profile">
											<div class="tmp_profile">
												<table class="tmp_profile_tb">
													<colgroup>
														<col class="tmp_col">
														<col width="*">
													</colgroup>
													<tbody>


														<tr>
															<th scope="row">식약처 분류</th>
															<td>${medicine.getMdClass()}</td>
														</tr>


														<tr>
															<th scope="row">구분</th>
															<td>${medicine.getMdGrade()}</td>
														</tr>


														<tr>
															<th scope="row">제조(수입) 업체명</span></th>
															<td>${medicine.getMdComp()}</td>
														</tr>


														<tr>
															<th scope="row">제형</th>
															<td>${medicine.getMdType()}</td>
														</tr>


														<tr>
															<th scope="row">모양</th>
															<td>${medicine.getMdShape()}</td>
														</tr>


														<tr>
															<th scope="row">색상</th>
															<td>${medicine.getMdColor()}</td>
														</tr>
														<tr>
															<th scope="row">약 분할선</th>
															<td>${medicine.getMdLine()}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>



									</div>
								</div>
								<br>
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
					class="btn btn-primary" onclick="location.href='deleteAdminMedicine.do?mdIdx=${medicine.getMdIdx()}'">삭제</button>
				<button type="button" style="align-items: right;"
					class="btn btn-primary" onclick="location.href='AdminMedicineList.do'">돌아가기</button>
					
					
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
	<!-- /.row -->
	<!-- /.container -->
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/star.js"></script>
</body>
<!--footer starts from here-->
<%@ include file="../../../common/bottom.jsp"%>
</html>