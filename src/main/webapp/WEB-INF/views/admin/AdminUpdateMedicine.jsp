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
<body class="is-preload">
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
						<li><h1>
								<strong><div align="left">&nbsp;&nbsp;수정</div>페이지&nbsp;&nbsp;</strong>
							</h1></li>
						<br>
						<br>
						<li><a href="#type" id="top-link"><span
								class="icon solid fa-th"><h6>분류</h6></span></a></li>
						<hr>
						<li><a href="#appr" id="about-link"><span
								class="icon solid fa-th"><h6>외형정보</h6></span></a></li>
						<hr>
						<li><a href="#ingd" id="about-link"><span
								class="icon solid fa-th"><h6>성분정보</h6></span></a></li>
						<hr>
						<li><a href="#save" id="about-link"><span
								class="icon solid fa-th"><h6>저장정보</h6></span></a></li>
						<hr>
						<li><a href="#effect" id="about-link"><span
								class="icon solid fa-th"><h6>효능효과</h6></span></a></li>
						<hr>
						<li><a href="#capa" id="about-link"><span
								class="icon solid fa-th"><h6>용법용량</h6></span></a></li>
						<hr>
						<li><a href="#caution" id="contact-link"><span
								class="icon solid fa-th"><h6>사용시 주의사항</h6></span></a></li>
						<br>
						<hr>

						<li><a href="AdminMedicineList.do"><h6>리스트로 돌아가기</h6></a></li>
					</ul>
				</nav>

			</div>
		</div>




		<!-- Page Content -->
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">신규 약 추가</li>
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
									<div class="inner_att_type">
										<form action="updateAdminMedicine2.do">
											<p class="thmb_desc">
												<br> <br>
											<div class="form-group">
												이미지 등록 <input type="file" id="mdImage" name="mdImage"
													class="form-control" value="${medicine.getMdImage()}" />
											</div>
											<br>
											<section id="type" class="one dark cover"></section>
											<hr>
											<br>
											<div class="control-group form-group">
												<div class="controls">
													<label><h3>분류</h3></label>
													<p>
														<label>약 이름</label> <input type="text"
															class="form-control" id="mdTitle" name="mdTitle"
															value="${medicine.getMdTitle()}">
													</p>
													<p>
														<label>식약처 분류</label> <input type="text"
															class="form-control" id="mdClass" name="mdClass"
															value="${medicine.getMdClass()}">
													</p>
													<p>
														<label>약 구분</label> <input type="text"
															class="form-control" id="mdGrade" name="mdGrade"
															value="${medicine.getMdGrade()}">
													</p>
													<p>
														<label>업체명</label> <input type="text" class="form-control"
															id="mdComp" name="mdComp" value="${medicine.getMdComp()}">
													</p>
												</div>
											</div>
											<br>
											<hr>
											<br>
											<section id="appr" class="one dark cover">
												<div class="control-group form-group">
													<div class="controls">
														<label><h3>외형정보</h3></label>
														<p>
															<label>성상</label> <input type="text" class="form-control"
																id=mdAppr name="mdAppr" value="${medicine.getMdAppr()}">
														</p>
														<p>
															<label>제형</label> <input type="text" class="form-control"
																id="mdType" name="mdType"
																value="${medicine.getMdType()}">
														</p>
														<p>
															<label>모양</label> <input type="text" class="form-control"
																id="mdShape" name="mdShape"
																value="${medicine.getMdShape()}">
														</p>
														<p>
															<label>색상</label> <input type="text" class="form-control"
																id="mdColor" name="mdColor"
																value="${medicine.getMdColor()}">
														</p>
														<p>
															<label>약 분할선</label> <input type="text"
																class="form-control" id="mdLine" name="mdLine"
																value="약${medicine.getMdLine()}">
														</p>
														<p>
															<label>약 식별표기</label> <input type="text"
																class="form-control" id="mdIn" name="mdIn"
																value="${medicine.getMdComp()}">
														</p>


													</div>
												</div>
											</section>
											<section id="ingd" class="one dark cover"></section>

											<br>
											<hr>
											<br>
											<div class="control-group form-group">
												<div class="controls">
													<label><h3>성분정보</h3></label>
													<textarea rows="5" cols="100" class="form-control"
														id="mdIngd" name="mdIngd" maxlength="999"
														style="resize: none">${medicine.getMdIngd()}</textarea>
												</div>
											</div>

											<section id="save" class="one dark cover">
												<br>
											</section>
											<hr>
											<br>
											<div class="control-group form-group">
												<div class="controls">
													<label><h3>저장정보</h3></label>
													<textarea rows="5" cols="100" class="form-control"
														id="mdSave" name="mdSave" maxlength="999"
														style="resize: none">${medicine.getMdSave()}</textarea>
												</div>
											</div>







											<section id="effect" class="one dark cover">
												<br>
											</section>
											<hr>
											<br>
											<div class="control-group form-group">
												<div class="controls">
													<label><h3>효능효과</h3></label>
													<textarea rows="5" cols="100" class="form-control"
														id="mdEffect" name="mdEffect" maxlength="999"
														style="resize: none">${medicine.getMdEffect()}</textarea>
												</div>
											</div>






											<section id="capa" class="one dark cover">
												<br>
											</section>
											<hr>
											<br>
											<div class="control-group form-group">
												<div class="controls">
													<label><h3>용법용량</h3></label>
													<textarea rows="5" cols="100" class="form-control"
														id="mdCapa" name="mdCapa" maxlength="999"
														style="resize: none">${medicine.getMdCapa()}</textarea>
												</div>
											</div>





											<section id="caution" class="one dark cover">
												<br>
											</section>
											<hr>
											<br>
											<div class="control-group form-group">
												<div class="controls">
													<label><h3>사용상 주의사항</h3></label>
													<textarea rows="5" cols="100" class="form-control"
														id="mdCaut" name="mdCaut" maxlength="999"
														style="resize: none">${medicine.getMdCaut()}</textarea>
												</div>
											</div>
											<div>
												<!-- For success/fail messages -->
												<button type="submit" style="align-items: right;"
													class="btn btn-primary">저장</button>
												<button type="button" style="align-items: right;"
													class="btn btn-primary"
													onclick="location.href='SelectAdminMedicine.do?mdIdx=${medicine.getMdIdx()}'">돌아가기</button>

											</div>
										</form>
										<br>
									</div>
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