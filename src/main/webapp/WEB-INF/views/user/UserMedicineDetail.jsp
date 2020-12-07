<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="container">
		<div class="row">
			<!-- Blog Entries Column -->
			<div class="col-md-8 blog-entries">
				<div id="container">
					<div id="content">
						<div class="section_wrap ">
							<div id="size_ct" class="size_ct_v2">
								<div class="att_type">
									<div class="inner_att_type">
										<div class="col-md-6">
											<span  style="width: 250px;"> <img
												src="images/1.jpg" width="100%" height="100%"
												alt="${medicine.mdTitle}" />
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
															<th scope="row">제조(수입) 업체명</th>
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
				</div>
			</div>
		</div>
		<div></div>
	</div>
	<!-- /.row -->
	<!-- /.container -->
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/star.js"></script>
	    <!-- /.container -->
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>