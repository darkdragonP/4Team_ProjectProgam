<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@ include file="../../../common/top.jsp"%>
<head>
<meta charset="UTF-8">

<link href="css/DR.css" rel="stylesheet">
</head>
<body>
	<!-- End Header 머리 꾸미기  -->
	<!-- ======= Contact Section 11 우리 위치를 표시해줄 공간입니다. ======= -->
	<!--컨텍트 전체입니다.-->
	<section id="contact" class="contact">
		<div class="container" data-aos="fade-up">
			<!--컨텍트 타이틀입니다.-->
			<div class="section-title"></div>
		</div>
		<!--/컨텍트 타이틀입니다.-->

		<!--컨텍트메인 지도부분입니다.-->

		<!--/컨텍트메인지도부분입니다-->

		<!--컨택트 푸터부분입니다.-->
		<div class="container" data-aos="fade-up">
			<!--검색창-->
			<div class="form-inline">
				<input class="form-control" type="search" placeholder="Search"
					id="search1" aria-label="Search"> <br> <br> <br>

				<button class="btn btn-outline-success" id="postYourAdd"
					onclick="postYourAdd()">Search</button>

			</div>

			<!--/검색창-->


			<div class="breadcrumb-main">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="DR.html">&nbsp;Home</a></li>
					<li class="breadcrumb-item active"></li>
				</ol>
			</div>

			<div data-aos="fade-up">


				<iframe class="mapmap" id="map" width="600" height="450"
					frameborder="0" style="border: 0"
					src="https://www.google.com/maps/embed/v1/place?q=가산디지털단지+약국&key=AIzaSyDTTytLEEbp91KBVn8jBF-NGiihKLvQQ_M"></iframe>


			</div>

		</div>
	</section>





	<div class="footer-newsletter">

<h4 class="header" style="color: #EF746F;"><a href="Contact.do" class="flex flex-column items-center justify-center color-inherit w-100 pa2 br2 br--top no-underline hover-bg-blue4 hover-white"style="font-size:33px;"><i class="fas fa-tablets" style="color: #EF746F;" >Search DrugStore</i></a></h4>

		</i>
		<p>
			<i class="icofont-google-map"></i>&nbsp;Homedicine 약국 안내 시스템은 전국의 약국
			운영정보를 안내하여 국민들의 약국 이용 편의를 제공합니다.<br> 휴일에도 문을 여는 약국을 찾는 약국 검색”과
			연중무휴로 운영 중인 약국을 검색하는 "연중무휴 약국 검색”이 있는데요.<br> 오늘은 약국 검색’을 활용하여 언제
			문을 여는지 약국을 찾는 방법을 보여드리겠습니다. 서울특별시 금천구 가산동 426-5 월드메르디앙벤처센터2차
			Homedicine<br> <i class="icofont-phone"></i> TEL 02-3471-7355
			FAX 02-3472-9232 Pharm IT3000M<br> <br> 프로그램 상담 1670-5447<br>
			<i class="icofont-clock-time icofont-rotate-90"></i> 사업자번호
			214-81-043432<br> <br> <i class="icofont-envelope"></i>
			Email: <strong>:</strong> gkatkdgns1@naver.com<br>
		</p>
	</div>
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
<!-- Bootstrap core JavaScript -->

</html>