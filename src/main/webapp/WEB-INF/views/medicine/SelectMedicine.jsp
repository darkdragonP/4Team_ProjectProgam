<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../../../common/top.jsp"%>
<link rel="stylesheet" href="css/Medicine.css?after" />
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
.star-input>.input, .star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	display: inline-block;
	vertical-align: middle;
	background: url('images/grade_img.png') no-repeat;
}

.star-input {
	display: inline-block;
	white-space: nowrap;
	width: 225px;
	height: 40px;
	padding: 25px;
	line-height: 30px;
}

.star-input>.input {
	display: inline-block;
	width: 150px;
	background-size: 150px;
	height: 28px;
	white-space: nowrap;
	overflow: hidden;
	position: relative;
}

.star-input>.input>input {
	position: absolute;
	width: 1px;
	height: 1px;
	opacity: 0;
}

.star-input>.input.focus {
	outline: 1px dotted #ddd;
}

.star-input>.input>label {
	width: 30px;
	height: 0;
	padding: 28px 0 0 0;
	overflow: hidden;
	float: left;
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 0;
}

.star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	background-size: 150px;
	background-position: 0 bottom;
}

.star-input>.input>label:hover ~label {
	background-image: none;
}

.star-input>.input>label[for="p1"] {
	width: 30px;
	z-index: 5;
}

.star-input>.input>label[for="p2"] {
	width: 60px;
	z-index: 4;
}

.star-input>.input>label[for="p3"] {
	width: 90px;
	z-index: 3;
}

.star-input>.input>label[for="p4"] {
	width: 120px;
	z-index: 2;
}

.star-input>.input>label[for="p5"] {
	width: 150px;
	z-index: 1;
}

.star-input>output {
	display: inline-block;
	width: 60px;
	font-size: 18px;
	text-align: right;
	vertical-align: middle;
}
</style>
</head>
<body>

	<div class="container">
		<h2 class="sub-header">약 검색</h2>
		<div class="card mb-4">
			<h5 class="card-header">
				<img src="images/googleVision.jpg" alt="OCR"
					style="width: 2%; height: 2%;" />OCR 이용하기
			</h5>
			<div class="card-body">
				<span class="input-group-btn">
					<button class="btn btn-secondary" type="button" >사진으로 검색</button>
				</span> <span class="input-group-btn">
					<button class="btn btn-secondary" type="button">처방전 등록하기</button>
				</span>

			</div>
		</div>
		<!-- Search Widget -->
		<div class="card mb-4">
			<h5 class="card-header">분류별 검색</h5>
			<div class="card-body">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search for...">
				</div>
				<br>
				<div class="shape">
					<div style="border: 1px solid hidden; float: left; width: 9%;">
						<div>
							<input type="radio" name="shape" value="원형">
						</div>
						<div>원형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 9%;">
						<div>
							<input type="radio" name="shape" value="타원형">
						</div>
						<div>타원형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 9%;">
						<div>
							<input type="radio" name="shape" value="반원형">
						</div>
						<div>반원형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 9%;">
						<div>
							<input type="radio" name="shape" value="삼각형">
						</div>
						<div>삼각형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 9%;">
						<div>
							<input type="radio" name="shape" value="사각형">
						</div>
						<div>사각형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 9%;">
						<div>
							<input type="radio" name="shape" value="마름모형">
						</div>
						<div>마름모형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 9%;">
						<div>
							<input type="radio" name="shape" value="장방형">
						</div>
						<div>장방형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 9%;">
						<div>
							<input type="radio" name="shape" value="오각형">
						</div>
						<div>오각형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 9%;">
						<div>
							<input type="radio" name="shape" value="육각형">
						</div>
						<div>육각형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 9%;">
						<div>
							<input type="radio" name="shape" value="팔각형">
						</div>
						<div>팔각형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 9%;">
						<div>
							<input type="radio" name="shape" value="기타">
						</div>
						<div>기타</div>
					</div>
				</div>
				<br>
				<hr>
				<div class="color">
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="하양">
						</div>
						<div>하양</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="노랑">
						</div>
						<div>노랑</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="주황">
						</div>
						<div>주황</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="분홍">
						</div>
						<div>분홍</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="빨강">
						</div>
						<div>빨강</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="갈색">
						</div>
						<div>갈색</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="연두">
						</div>
						<div>연두</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="초록">
						</div>
						<div>초록</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="청록">
						</div>
						<div>청록</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="파랑">
						</div>
						<div>파랑</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="청록">
						</div>
						<div>청록</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="남색">
						</div>
						<div>남색</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="자주">
						</div>
						<div>자주</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="보라">
						</div>
						<div>보라</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="회색">
						</div>
						<div>회색</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="검정">
						</div>
						<div>검정</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 5.8%;">
						<div>
							<input type="radio" name="color" value="투명">
						</div>
						<div>투명</div>
					</div>
				</div>
				<br>
				<hr>
				<div class="type">
					<div style="border: 1px solid hidden; float: left; width: 30%;">
						<div>
							<input type="radio" name="type" value="정제류">
						</div>
						<div>정제류</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 30%;">
						<div>
							<input type="radio" name="type" value="경질캡슐">
						</div>
						<div>경질캡슐</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 30%;">
						<div>
							<input type="radio" name="type" value="연질캡슐">
						</div>
						<div>연질캡슐</div>
					</div>
				</div>
				<br>
				<hr>
				<div class="line">
					<div style="border: 1px solid hidden; float: left; width: 25%;">
						<div>
							<input type="radio" name="line" value="없음">
						</div>
						<div>없음</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 25%;">
						<div>
							<input type="radio" name="line" value="(-)형">
						</div>
						<div>(-)형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 25%;">
						<div>
							<input type="radio" name="line" value="(+)형">
						</div>
						<div>(+)형</div>
					</div>
					<div style="border: 1px solid hidden; float: left; width: 25%;">
						<div>
							<input type="radio" name="line" value="기타">
						</div>
						<div>기타</div>
					</div>
				</div>
				<br>
				<hr>
				<span style="float: right;"> <span class="input-group-btn">
						<button class="btn btn-secondary" type="button">검색</button>
				</span> <span class="input-group-btn">
						<button class="btn btn-secondary" type="button">초기화</button>
				</span>
				</span>
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
				</div>
			</div>
			<!-- Sidebar Widgets Column -->
			<div class="col-md-4 blog-right-side">
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">별점</h5>
					<!-- 현재 별점 -->
					<div class="card-body">

						<h5>
							<strong>[별점 이미지]&nbsp;&nbsp;&nbsp;${medicine.mdRating}점</strong>
						</h5>
					</div>
				</div>
				<!-- Side Widget -->
				<div class="card my-4">
					<h5 class="card-header">관련 게시물</h5>
					<div class="card-body"
						style="overflow: scroll; width: 350px; height: 1100px;">
						<div>
							<h4>게시글 제목</h4>
							You can put anything you want inside of these side widgets. They
							are easy to use, and feature the new Bootstrap 4 card containers!
						</div>
						<br>
						<hr>
						<br>
					</div>
				</div>
			</div>
		</div>
		</div>
		
	 <div class="container">
		<div class="blog-right-side">
			<!-- Comments Form -->
	
			<div class="card my-5">
			
				<h5 class="card-header">댓글 등록</h5>
				<div class="card-body">
					<!--  별점매기기  -->
					<div>
						<span class="star-input"> <span class="input"> <input
								type="radio" name="star-input" value="1" id="p1"> <label
								for="p1">1</label> <input type="radio" name="star-input"
								value="2" id="p2"> <label for="p2">2</label> <input
								type="radio" name="star-input" value="3" id="p3"> <label
								for="p3">3</label> <input type="radio" name="star-input"
								value="4" id="p4"> <label for="p4">4</label> <input
								type="radio" name="star-input" value="5" id="p5"> <label
								for="p5">5</label>
						</span> <output for="star-input">
								<b>0</b>점
							</output>
						</span>
					</div>
					<br>
					<div>
						<form>
							<div class="form-group">
								<textarea class="form-control" rows="3"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">댓글 등록</button>
						</form>
					</div>
				</div>
			</div>
			</div>
			</div>
			
				<div class="container">
			<!-- Single Comment -->
	<a href="#" class="delete" data-action="remove" data-param="parentCommentNo:403613626,commentNo:403613626,replyPreviewNo:0,imageCount:0,objectId:'597447_359'" data-log="RPC.modify"><span class="delete"></span><span class="delete">삭제</span>&nbsp;&nbsp;</a>
	<a href="#" class="modify" data-action="modify" data-param="parentCommentNo:403613626,commentNo:403613626,replyPreviewNo:0,imageCount:0,objectId:'597447_359'" data-log="RPC.del"><span class="modify"></span><span class="modify">수정하기</span></a>
	
	<br>
	<br>
			<div class="media mb-4">
			
				<div class="media-body">				
					<h6 class="mt-0">아이디+***&nbsp;&nbsp;&nbsp;[별점이미지]&nbsp;&nbsp;&nbsp;[작성일]</h6>
					Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
					scelerisque ante sollicitudin. Cras purus odio, vestibulum in
					vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
					vulputate fringilla. Donec lacinia congue felis in faucibus.
				</div>
			</div>
			<hr>
			<div class="media mb-4">
				<div class="media-body">
					<h6 class="mt-0">아이디+***&nbsp;&nbsp;&nbsp;[별점이미지]&nbsp;&nbsp;&nbsp;[작성일]</h6>
					Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
					scelerisque ante sollicitudin. Cras purus odio, vestibulum in
					vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
					vulputate fringilla. Donec lacinia congue felis in faucibus.
				</div>
			</div>
			<hr>
			<div class="media mb-4">
				<div class="media-body">
					<h6 class="mt-0">아이디+***&nbsp;&nbsp;&nbsp;[별점이미지]&nbsp;&nbsp;&nbsp;[작성일]</h6>
					Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
					scelerisque ante sollicitudin. Cras purus odio, vestibulum in
					vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
					vulputate fringilla. Donec lacinia congue felis in faucibus.
				</div>
			</div>
			<hr>
			<div class="media mb-4">
				<div class="media-body">
					<h6 class="mt-0">아이디+***&nbsp;&nbsp;&nbsp;[별점이미지]&nbsp;&nbsp;&nbsp;[작성일]</h6>
					Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
					scelerisque ante sollicitudin. Cras purus odio, vestibulum in
					vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
					vulputate fringilla. Donec lacinia congue felis in faucibus.
				</div>
			</div>
			<hr>
			<div class="media mb-4">
				<div class="media-body">
					<h6 class="mt-0">아이디+***&nbsp;&nbsp;&nbsp;[별점이미지]&nbsp;&nbsp;&nbsp;[작성일]</h6>
					Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
					scelerisque ante sollicitudin. Cras purus odio, vestibulum in
					vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
					vulputate fringilla. Donec lacinia congue felis in faucibus.
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