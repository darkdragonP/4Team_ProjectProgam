<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="../../../common/top.jsp"%>
<link rel="stylesheet" href="css/Medicine.css?after" />
	<link rel="stylesheet" href="css/style.css" />
<head>
<meta charset="EUC-KR">
<title>MEDICINE</title>
</head>
<body>
	<div class="container">
		<h2 class="sub-header" style="color: #EF746F;"><a href="medicineList.do"
				class="flex flex-column items-center justify-center color-inherit w-100 pa2 br2 br--top no-underline hover-bg-blue4 hover-white"
				style="font-size: 30px;"> <i class="fas fa-ambulance"
				style="color: #EF746F;">약 검색</i></a>
		</h2>
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">약 세부사항</li>
			</ol>
		</div>
		<div class="card mb-4">
			<h5 class="card-header">
				<img src="images/googleVision.jpg" alt="OCR"
					style="width: 2%; height: 2%;" />OCR 이용하기
			</h5>
			<div class="card-body">
				<span class="input-group-btn">
					<button class="btn btn-secondary" type="button">사진으로 검색</button>
				</span> <span class="input-group-btn">
					<button class="btn btn-secondary" type="button">처방전 등록하기</button>
				</span>
			</div>
		</div>


		<!-- Search Widget -->
		<div class="card mb-4">
			<h5 class="card-header">분류별 검색</h5>
			<div class="card-body">
				<form action="searchTextMedicine.do">
					<div class="input-group">
						<input type="text" name="textMedicine" class="form-control"
							placeholder="약 이름 또는 성분으로 검색하세요">&nbsp;
						<button class="btn btn-secondary" type="submit">검색</button>
					</div>
				</form>
				
			<br>
			<h5 class="card-header">약 모양으로 검색</h5>
			<div class="card-body">
				<form action="searchRadioMedicine.do">
					<div class="shape">
						<div style="border: 1px solid hidden; float: left; width: 17.2%;">
							<div>
								<input type="radio" name="mdShape" value="원형">
								<img src="images/shape01.jpg" alt="원형">
							</div>
						</div>
						&nbsp;
						<div style="border: 1px solid hidden; float: left; width: 17.2%;">
							<div>
								<input type="radio" name="mdShape" value="타원형"> <img
									src="images/shape02.jpg" alt="타원형">
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 17.2%;">
							<div>
								<input type="radio" name="mdShape" value="반원형"> <img
									src="images/shape03.jpg" alt="반원형">
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 17.2%;">
							<div>
								<input type="radio" name="mdShape" value="삼각형"> <img
									src="images/shape04.jpg" alt="삼각형">
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 17.2%;">
							<div>
								<input type="radio" name="mdShape" value="사각형"> <img
									src="images/shape05.jpg" alt="사각형">
							</div>
						</div>
						<div style="clear: both;">
							<div style="border: 1px solid hidden; float: left; width: 17.2%;">
								<div>
									<input type="radio" name="mdShape" value="마름모형"> <img
										src="images/shape06.jpg" alt="마름모형">
								</div>
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 17.2%;">
							<div>
								<input type="radio" name="mdShape" value="장방형"> <img
									src="images/shape07.jpg" alt="장방형">
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 17.2%;">
							<div>
								<input type="radio" name="mdShape" value="오각형"> <img
									src="images/shape10.jpg" alt="오각형">
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 17.2%;">
							<div>
								<input type="radio" name="mdShape" value="육각형"> <img
									src="images/shape08.jpg" alt="육각형">
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 17.2%;">
							<div>
								<input type="radio" name="mdShape" value="팔각형"> <img
									src="images/shape09.jpg" alt="팔각형">
							</div>
						</div>
					</div>
					<br> <br> 
					<hr>
					<div class="color">
						<div style="border: 1px solid hidden; float: left; width: 11.7%;">
							<input type="radio" name="mdColor" value="빨강">
							<div>
								<div class="com" style="background-color: #FA5858;"></div>
								<span style="color: black;" />
								<div class="coys1" style="background-color: white;"color:"black";>빨강</div>
								</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="노랑">
								<div class="com" style="background-color: #F4FA58;"></div>
								<span style="color: black;" />
								<div class="coys1" style="background-color: white;"color:black;>노랑</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="주황">
								<div class="com" style="background-color: #FE642E;"></div>
								<span style="color: black;" />
								<div class="coys1" style="background-color: white;"color:"black";>주황</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="분홍">
								<div class="com" style="background-color: #F6CEF5;"></div>
								<span style="color: black;" />
								<div class="coys1" style="background-color: white;"color:"black";>분홍</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="회색">
								<div class="com" style="background-color: #D8D8D8;"></div>
								<span style="color: black;" />
								<div class="coys1" style="background-color: white;"color:"white";>회색</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="갈색">
								<div class="com" style="background-color: #B40431;"></div>
								<span style="color: black;" />
								<div class="coys1" style="background-color: white;"color:"black";>갈색</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="연두">
								<div class="com" style="background-color: #BEF781;"></div>
								<span style="color: black;" />
									<div class="coys1" style="background-color: white;"color:"black";>연두</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="초록">
								<div class="com" style="background-color: #58FA82;"></div>
								<span style="color: black;"/>
									<div class="coys1" style="background-color: white;"color:"black";>초록</div>
							</div>
							<br>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="청록">
								<div class="com" style="background-color: #04B486;"></div>
								<span style="color: black;" />
									<div class="coys1" style="background-color: white;"color:"black";>청록</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="파랑">
								<div class="com" style="background-color: #5858FA;"></div>
								<span style="color: black;" />
									<div class="coys1" style="background-color: white;"color:"black";>파랑</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="남색">
								<div class="com" style="background-color: #0B0B61;"></div>
								<span style="color: black;" />
									<div class="coys1" style="background-color: white;"color:"black";>남색</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="자주">
								<div class="com" style="background-color: #FE2E9A;"></div>
								<span style="color: black;" />
									<div class="coys1" style="background-color: white;"color:"black";>자주</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="보라">
								<div class="com" style="background-color: #AC58FA;"></div>
								<span style="color: black;" />
									<div class="coys1" style="background-color: white;"color:"black";>보라</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="회색">
								<div class="com" style="background-color: #F2F2F2;"></div>
								<span style="color: black;" />
									<div class="coys1" style="background-color: white;"color:"black";>흰색</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="검정">
								<div class="com" style="background-color: #000000;"></div>
								<span style="color: black;" />
									<div class="coys1" style="background-color: white;"color:"black";>검정</div>
							</div>
							<div style="border: 1px solid hidden; float: left; width: 11.7%;">
								<input type="radio" name="mdColor" value="투명">
								<div class="com" style="background-color: none;"></div>
								<span style="color: black;" />
									<div class="coys1" style="background-color: white;"color:"black";>투명</div>
							</div>
						<p style="clear: both"><hr>
						</p>
					</div>
					<br> <br> <br>
					<hr>
					<div class="Type">
						<div style="border: 1px solid hidden; float: left; width: 30%;">
							<div>
								<input type="radio" name="mdType" value="정제류">
								<img src="images/type01.jpg" alt="정제류">
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 30%;">
							<div>
								<input type="radio" name="mdType" value="경질캡슐">
								<img src="images/type02.jpg" alt="경질캡슐">
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 30%;">
							<div>
								<input type="radio" name="mdType" value="연질캡슐">
								<img src="images/type03.jpg" alt="연질캡슐">
							</div>
						</div>
					</div>
					<br> <br>
					<hr>
					<div class="mdLine">
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="mdLine" value="없음"> 
								<img src="images/line01.jpg" alt="없음">
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="mdLine" value="(-)형"> 
								<img src="images/line02.jpg" alt="-형">
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="mdLine" value="(+)형"> 
								<img src="images/line03.jpg" alt="+형">
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="mdLine" value="기타">
							</div>
							<span style="color: black;">
							<div>기타</div>
						</div>
					</div>
					<br> <br> <br>
					<hr>
					<span style="float: right;"> 
						<span class="input-group-btn">
							<button class="btn btn-secondary" type="button">검색</button>
						</span>
						<span class="input-group-btn">
							<button class="btn btn-secondary" type="button">초기화</button>
						</span>
					</span>
					<br>
				</form>
			</div>
			<br>
		</div>


		<!-- Page Content -->
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">약 리스트</li>
			</ol>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>이미지</th>
					<th>이름</th>
					<th>평균별점</th>
					<th>조회수</th>
					<th>작성일</th>
				</tr>
			</thead>
				<tbody>
			<c:forEach items="${medicineList}" var="medicine">
					<tr>
						<td>${medicine.mdIdx}</td>
						<td>${medicine.mdImage}</td>
						<td><a href="SelectMedicine.do?mdIdx=${medicine.mdIdx}">${medicine.mdTitle}</a></td>
						<td><img src="images/star${medicine.mdRating}.png"
							width="100" height="20"></td>
						<td>${medicine.mdHits}</td>
						<td>${medicine.mdDate}</td>
					</tr>
			</c:forEach>
				</tbody>
		</table>
		<div class="wrap">
		<div class="total_page">
			<span>전체 ${mdBCounts.endPage}</span> <span>Page<strong>${mdBCounts.startPage}</strong>/${mdBCounts.endPage}
			</span>
		</div>
		<ul class="pagination">
			<c:if test="${mdBCounts.curRange ne 0}">
				<li class="page-item"><b class="page-link"><a
						href="medicineList.do?curRange=${mdBCounts.curRange}&result=1"><</a></b></li>
			</c:if>
			<c:forEach var="pageNum" begin="${mdBCounts.startPage}"
				end="${mdBCounts.endPage}">
				<c:choose>
					<c:when test="${pageNum eq  mdBCounts.curPage}">
						<span style="font-weight: bold;"><b class="page-link"
							style="background-color: lightpink;"><a
								href="medicineList.do?curPage=${pageNum}&curRange=${mdBCounts.curRange}&startp=${mdBCounts.startPage}"
								onClick="fn_paging('${pageNum }')">${pageNum }</a></b></span>
					</c:when>
					<c:otherwise>
						<li><b class="page-link"> <a
								href="medicineList.do?curPage=${pageNum}&curRange=${mdBCounts.curRange}&startp=${mdBCounts.startPage}">${pageNum}</a></b></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${mdBCounts.curRange+1 ne mdBCounts.rangeCnt}">
				<li class="page-item"><b class="page-link"><a
						href="medicineList.do?curRange=${mdBCounts.curRange}&result=2">></a></b></li>
			</c:if>
		</ul>
		</div>


	</div>
	</div>
</body>
<%@ include file="../../../common/bottom.jsp"%>
</html>