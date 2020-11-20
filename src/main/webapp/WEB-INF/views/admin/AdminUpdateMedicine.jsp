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
								<strong>수정페이지</strong>
							</h1></li>
						<br>
						<br>
						<li><a href="#class" id="top-link"><span
							    class="icon solid fa-th"><h6>식약처 분류</h6></span></a></li>
							    <hr>
						<li><a href="#type" id="about-link"><span
								class="icon solid fa-th"><h6>구분</h6></span></a></li>
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
						<br>
						<br>
						<hr>
						
						<li><a href="" id="contact-link"><h6>저장</h6></span></a></li>
						<li><a href="" id="contact-link"><h6>리스트 바로가기</h6></span></a></li>
					</ul>
				</nav>

			</div>
		</div>




		<!-- Page Content -->
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">수정 페이지</li>
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
										<p class="thmb_desc">
										<h3>
											<strong>${medicine.getMdTitle()}</strong>
										</h3>
										<br>
										<br>
										<div class="thmb thmb_border">
												<span class="img_box" style="width: 250px;"> <img
													src="images/1.jpg" width="500" height="200"
													alt="${medicine.mdTitle}" />
												</span>
										</div>
											<section id="class" class="one dark cover"></section>
										<br>
										<hr>
											<br>
											
										<div class="control-group form-group">
											<div class="controls">
												<p>
													식약처 분류 <input type="text" class="form-control" width="63%;"
														id=class required placeholder="${medicine.getMdAppr()}">
												</p>
												<br>
											<section id="type" class="one dark cover"></section>
												<hr>
												<br>
												<p>
													구분 <input type="text" class="form-control" id="type"
														required placeholder="${medicine.getMdType()}">
												</p>
											</div>
										</div>
										<section id="appr" class="one dark cover"></section>
										<br>
										<hr>
	<br>
										<div class="control-group form-group">
											<div class="controls">
												<label><h3>외형정보</h3></label>
												<p>
													성상 <input type="text" class="form-control" id=appr required
														placeholder="${medicine.getMdAppr()}">
												</p>
												<p>
													제형 <input type="text" class="form-control" id="type"
														required placeholder="${medicine.getMdType()}">
												</p>
												<p>
													모양 <input type="text" class="form-control" id="shape"
														required placeholder="${medicine.getMdShape()}">
												</p>
												<p>
													색상 <input type="text" class="form-control" id="color"
														required placeholder="${medicine.getMdColor()}">
												</p>
												<section id="ingd" class="one dark cover">
													<p>
														약 분할선 <input type="text" class="form-control" id="line"
															required placeholder="${medicine.getMdLine()}">
													</p>
												</section>
											</div>
										</div>
									</div>
									<br>
									<hr>
									<br>
									<div class="control-group form-group">
										<div class="controls">
											<label><h3>성분정보</h3></label>
											<textarea rows="5" cols="100" class="form-control"
												id="message" required placeholder="${medicine.getMdIngd()}"
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
												id="message" required placeholder="${medicine.getMdSave()}"
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
												id="effect" required placeholder="${medicine.getMdEffect()}"
												maxlength="999" style="resize: none"></textarea>
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
											<textarea rows="5" cols="100" class="form-control" id="capa"
												required placeholder="${medicine.getMdCapa()}"
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
											<label><h3>사용상 주의사항</h3></label>
											<textarea rows="5" cols="100" class="form-control" id="caut"
												required placeholder="${medicine.getMdCaut()}"
												maxlength="999" style="resize: none"></textarea>
										</div>
									</div>
									<div>
										<!-- For success/fail messages -->
										<button type="submit" style="align-items: right;"
											class="btn btn-primary" id="sentmedicine">저장</button>
									</div>
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