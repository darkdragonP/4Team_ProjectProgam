<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="../../../common/top.jsp"%>
<link rel="stylesheet" href="css/Medicine.css?after" />
<head>
<meta charset="EUC-KR">
<title>MEDICINE</title>
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
					<button class="btn btn-secondary" type="button">사진으로 검색</button>
				</span> <span class="input-group-btn">
					<button class="btn btn-secondary" type="button">처방전 등록하기</button>
				</span>
			</div>
		</div>


		<!-- Search Widget -->
		<div class="card mb-4">
			<h5 class="card-header">약 정보로 검색</h5>
			<div class="card-body">
				<form action="searchTextMedicine.do">
					<div class="input-group">
						<input type="text" name="textMedicine" class="form-control"
							placeholder="약 이름 또는 성분으로 검색하세요">&nbsp;
						<button class="btn btn-secondary" type="submit">검색</button>
					</div>
				</form>
			</div>
			<br>
			<h5 class="card-header">약 모양으로 검색</h5>
			<div class="card-body">
				<form action="searchRadioMedicine.do">
					<div class="shape">
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" checked="checked" value="">
							</div>
							<div>
								모양<br>전체
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" value="원형">
							</div>
							<div>원형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" value="타원형">
							</div>
							<div>타원형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" value="반원형">
							</div>
							<div>반원형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" value="삼각형">
							</div>
							<div>삼각형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" value="사각형">
							</div>
							<div>사각형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" value="마름모형">
							</div>
							<div>마름모형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" value="장방형">
							</div>
							<div>장방형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" value="오각형">
							</div>
							<div>오각형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" value="육각형">
							</div>
							<div>육각형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" value="팔각형">
							</div>
							<div>팔각형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 8%;">
							<div>
								<input type="radio" name="mdShape" value="기타">
							</div>
							<div>기타</div>
						</div>
					</div>
					<br> <br> <br>
					<hr>
					<div class="color">
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" checked="checked" value="">
							</div>
							<div>
								색상<br>전체
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="하양">
							</div>
							<div>하양</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="노랑">
							</div>
							<div>노랑</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="주황">
							</div>
							<div>주황</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="분홍">
							</div>
							<div>분홍</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="빨강">
							</div>
							<div>빨강</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="갈색">
							</div>
							<div>갈색</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="연두">
							</div>
							<div>연두</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="초록">
							</div>
							<div>초록</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="청록">
							</div>
							<div>청록</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="파랑">
							</div>
							<div>파랑</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="청록">
							</div>
							<div>청록</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="남색">
							</div>
							<div>남색</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="자주">
							</div>
							<div>자주</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="보라">
							</div>
							<div>보라</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="회색">
							</div>
							<div>회색</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="검정">
							</div>
							<div>검정</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 5.5%;">
							<div>
								<input type="radio" name="mdColor" value="투명">
							</div>
							<div>투명</div>
						</div>
					</div>
					<br> <br> <br>
					<hr>
					<div class="Type">
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="mdType" checked="checked" value="">
							</div>
							<div>
								제형<br>전체
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="mdType" value="정제류">
							</div>
							<div>정제류</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="mdType" value="경질캡슐">
							</div>
							<div>경질캡슐</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="mdType" value="연질캡슐">
							</div>
							<div>연질캡슐</div>
						</div>
					</div>
					<br> <br> <br>
					<hr>
					<div class="mdLine">
						<div style="border: 1px solid hidden; float: left; width: 20%;">
							<div>
								<input type="radio" name="mdLine" checked="checked" value="">
							</div>
							<div>
								분할선<br>전체
							</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 20%;">
							<div>
								<input type="radio" name="mdLine" value="없음">
							</div>
							<div>없음</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 20%;">
							<div>
								<input type="radio" name="mdLine" value="(-)형">
							</div>
							<div>(-)형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 20%;">
							<div>
								<input type="radio" name="mdLine" value="(+)형">
							</div>
							<div>(+)형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 20%;">
							<div>
								<input type="radio" name="mdLine" value="기타">
							</div>
							<div>기타</div>
						</div>
					</div>
					<br> <br> <br>
					<hr>
					<center>
						<button class="btn btn-secondary" type="submit">검색</button>
						<button class="btn btn-secondary" type="submit">초기화</button>
					</center>
				</form>
			</div>
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
			<c:forEach items="${medicineList}" var="medicine">
				<tbody>
					<tr>
						<td>${medicine.mdIdx}</td>
						<td>${medicine.mdImage}</td>
						<td><a href="SelectMedicine.do?mdIdx=${medicine.mdIdx}">${medicine.mdTitle}</a></td>
						<td><img src="images/star${medicine.mdRating}.png"
							width="100" height="20"></td>
						<td>${medicine.mdHits}</td>
						<td>${medicine.mdDate}</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
		<ul class="pagination">
			<c:if test="${mdBCounts.curRange ne 0}">
				<li class="page-item"><b class="page-link"><a
						href="searchTextMedicine.do?textMedicine=${mdBCounts.textMedicine}&curRange=${mdBCounts.curRange}&result=1">이전</a></b></li>
			</c:if>
			<c:forEach var="pageNum" begin="${mdBCounts.startPage}"
				end="${mdBCounts.endPage}">
				<c:choose>
					<c:when test="${pageNum eq  mdBCounts.curPage}">
						<span style="font-weight: bold;"><b class="page-link"
							style="background-color: lightpink;"><a
								href="searchTextMedicine.do?textMedicine=${mdBCounts.textMedicine}&curPage=${pageNum}&curRange=${mdBCounts.curRange}&startp=${mdBCounts.startPage}"
								onClick="fn_paging('${pageNum }')">${pageNum }</a></b></span>
					</c:when>
					<c:otherwise>
						<li><b class="page-link"> <a
								href="searchTextMedicine.do?textMedicine=${mdBCounts.textMedicine}&curPage=${pageNum}&curRange=${mdBCounts.curRange}&startp=${mdBCounts.startPage}">${pageNum}</a></b></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${mdBCounts.curRange+1 ne mdBCounts.rangeCnt}">
				<li class="page-item"><b class="page-link"><a
						href="searchTextMedicine.do?textMedicine=${mdBCounts.textMedicine}&curRange=${mdBCounts.curRange}&result=2">다음</a></b></li>
			</c:if>
		</ul>



	</div>
</body>
<%@ include file="../../../common/bottom.jsp"%>
</html>