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
								<strong><div align="left" style="color: #EF746F;">&nbsp;&nbsp;신규 약</div>추가&nbsp;&nbsp;</strong>
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

						<li><a href="AdminMedicineList.do"><h6>저장</h6></a></li>
						<li><a href="AdminMedicineList.do"><h6>돌아가기</h6></a></li>
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
										<form action="InsertMedicine.do">
											<p class="thmb_desc">
												<br> <br>
											<div class="form-group">
												이미지 등록 <input type="file" id="mdImage" name="mdImage"
													class="form-control" />
											</div>
											<br>
											<section id="type" class="one dark cover"></section>
											<hr>
											<br>
											<div class="control-group form-group">
												<div class="controls">
													<label><h3>분류</h3></label>
													<p>
														<input type="text" class="form-control" id="mdTitle"
															name="mdTitle" required placeholder="이름">
													</p>
													<p>
														<input type="text" class="form-control" id="mdClass"
															name="mdClass" required placeholder="식약처 븐류">
													</p>
													<p>
														<input type="text" class="form-control" id="mdGrade"
															name="mdGrade" required placeholder="구분">
													</p>
													<p>
														<input type="text" class="form-control" id="mdComp"
															name="mdComp" required placeholder="업체명">
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
															<input type="text" class="form-control" id=mdAppr
																required name="mdAppr" placeholder="성상">
														</p>
														<p>
															<input type="text" class="form-control" id="mdType"
																name="mdType" required placeholder="제형">
														</p>
														<p>
															<input type="text" class="form-control" id="mdShape"
																name="mdShape" required placeholder="모양">
														</p>
														<p>
															<input type="text" class="form-control" id="mdColor"
																name="mdColor" required placeholder="색상">
														</p>
														<p>
															<input type="text" class="form-control" id="mdLine"
																name="mdLine" required placeholder="약 분할선">
														</p>
														<p>
															<input type="text" class="form-control" id="mdIn"
																name="mdIn" required placeholder="약 식별표기">
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
														id="mdIngd" name="mdIngd" required placeholder="내용을 입력하세요"
														maxlength="999" style="resize: none"></textarea>
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
														id="mdSave" name="mdSave" required placeholder="내용을 입력하세요"
														maxlength="999" style="resize: none"></textarea>
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
														id="mdEffect" name="mdEffect" required
														placeholder="내용을 입력하세요" maxlength="999"
														style="resize: none"></textarea>
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
														id="mdCapa" name="mdCapa" required placeholder="내용을 입력하세요"
														maxlength="999" style="resize: none"></textarea>
												</div>
											</div>





											<section id="caution" class="one dark cover">
												<br>
											</section>
											<hr>
											<br>
											<div class="control-group form-group">
												<div class="controls">
													<h3><label>사용상 주의사항</label></h3>
													<textarea rows="5" cols="100" class="form-control"
														id="mdCaut" name="mdCaut" required placeholder="내용을 입력하세요"
														maxlength="999" style="resize: none"></textarea>
												</div>
											</div>
											<div>
												<!-- For success/fail messages -->
												<button type="submit" style="align-items: right;"
													class="btn btn-primary">저장</button>
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