<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../../../common/top.jsp"%>
<link rel="stylesheet" href="css/Medicine.css?after" />
<head>
<meta charset="EUC-KR">
<link href="css/DR.css" rel="stylesheet">
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
		<h2 class="sub-header" style="color: #EF746F;"><a href="SelectMedicine.do?mdIdx=43272"
				class="flex flex-column items-center justify-center color-inherit w-100 pa2 br2 br--top no-underline hover-bg-blue4 hover-white"
				style="font-size: 30px;"> <i class="fas fa-ambulance"
				style="color: #EF746F;">약 검색</i></a>
		</h2>
		
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
										<h3>
											<strong>${medicine.getMdTitle()}
										</strong>
										</h3>
										<div class="thmb thmb_border">
											<span class="img_box" style="width: 250px;"> <img
												src="${medicine.getMdImage()}" width="500" height="200"
												alt="${medicine.getMdTitle()}" />
												<div class="enlarge">
													<a href="${medicine.getMdImage()}" width="300%" height="300%">이미지
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
					<!-- 현재 별점 -->
					
					
					
					<div class="card-body">

						<img src="images/detail_star${medicine.mdRating}.png" width="70%"
						>&nbsp;&nbsp;&nbsp;
					</div>
					
					
					
				<!-- Side Widget -->
				<div> 
					<h5 class="cards-header" style="font-weight:bold";font-color="" >약국 검색</h5>
					<div class="cards-body"
						style="overflow: scroll; width: 350px; height: 538px;">
						
						<div>
						
							<iframe class="mapmap" id="map" width="600" height="450" 
								frameborder="0" style="border: 0"
								
								src="https://www.google.com/maps/embed/v1/place?q=가산디지털단지+약국&key=AIzaSyDTTytLEEbp91KBVn8jBF-NGiihKLvQQ_M"></iframe>
						</div>
						<!--검색창-->
						<div class="form-inline">
						<input class="form-control" type="search" placeholder="Search" style="padding: 0.61rem 3.77rem;"
							id="search1" aria-label="Search"> <br> <br> <br>

						<button class="btn btn-outline-success" id="postYourAdd"
							onclick="postYourAdd()">Search</button>
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
						<form action="insertMdMark.do" method="post">
							<input type=hidden id="mdIdx" name="mdIdx"
								value="${medicine.mdIdx}"> <span class="star-input">
								<span class="input"> <input type="radio" name="mdMR"
									value="1" id="p1"> <label for="p1">1</label> <input
									type="radio" name="mdMR" value="2" id="p2"> <label
									for="p2">2</label> <input type="radio" name=mdMR value="3"
									id="p3"> <label for="p3">3</label> <input type="radio"
									name="mdMR" value="4" id="p4"> <label for="p4">4</label>
									<input type="radio" name="mdMR" value="5" id="p5"> <label
									for="p5">5</label>
							</span>
							</span><span> <output for="star-input">
									<button type="submit" class="btn btn-primary">확인</button>
								</output>
							</span>
						</form>
					</div>
					<br>
					<div>
						<form action="insertmdReply.do" method="post">
							<input type=hidden id="mdIdx" name="mdIdx" 
								value="${medicine.mdIdx}">
							<div class="form-group">
								<textarea class="form-control2" rows="3" id="uReContent"
									name="uReContent" required
									placeholder="내용을 입력하세요 or 로그인후 이용가능합니다 or ocr인증 후 이용가능합니다.[ajax로 구현 예정]"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">댓글 등록</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<c:forEach items="${selectMdReplyList}" var="mdReplyList">

			<!-- Single Comment -->
			<c:if test="${mdReplyList.uIdx == uIdx}">
				<a
					href="deleteMdReply.do?uReIdx=${mdReplyList.uReIdx}&mdIdx=${medicine.mdIdx}"
					class="delete">삭제&nbsp;&nbsp;</a>
			</c:if>
			<br>
			<br>

			<!-- Single Comment -->
			<div class="media mb-4">
				<div class="media-body">
					<h6 class="mt-0">${mdReplyList.uName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mdReplyList.uReDate}</h6>
					${mdReplyList.uReContent}
				</div>
			</div>
			<hr>
		</c:forEach>
	</div>

	<!-- /.row -->
	<!-- /.container -->
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/star.js"></script>
</body>

<script type="text/javascript">
	var urltemplate = "https://www.google.com/maps/embed/v1/place?q={}&key=AIzaSyDTTytLEEbp91KBVn8jBF-NGiihKLvQQ_M"

	function postYourAdd() {
		var search1 = $("#search1");

		console.log(search1.val());

		var url = urltemplate.replace("{}", search1.val());

		console.log(url);

		var iframe = $("#map");

		iframe.attr("src", url);
	}
	
	$("#search1").keyup(function(e){if(e.keyCode == 13)  postYourAdd(); });
</script>

<!--footer starts from here-->
<%@ include file="../../../common/bottom.jsp"%>
</html>