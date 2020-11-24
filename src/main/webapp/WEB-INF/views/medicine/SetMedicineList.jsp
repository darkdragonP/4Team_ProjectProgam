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
						style="width: 2%; height: 2%;" />OCR 이용하기</h5>
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
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search for...">
					</div>
					<br>
					<div class="shape">
						<div style="border: 1px solid hidden; float: left; width: 9%;">
							<div>
								<input type="radio" name="color" value="원형">
							</div>
							<div>원형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 9%;">
							<div>
								<input type="radio" name="color" value="타원형">
							</div>
							<div>타원형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 9%;">
							<div>
								<input type="radio" name="color" value="반원형">
							</div>
							<div>반원형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 9%;">
							<div>
								<input type="radio" name="color" value="삼각형">
							</div>
							<div>삼각형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 9%;">
							<div>
								<input type="radio" name="color" value="사각형">
							</div>
							<div>사각형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 9%;">
							<div>
								<input type="radio" name="color" value="마름모형">
							</div>
							<div>마름모형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 9%;">
							<div>
								<input type="radio" name="color" value="장방형">
							</div>
							<div>장방형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 9%;">
							<div>
								<input type="radio" name="color" value="오각형">
							</div>
							<div>오각형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 9%;">
							<div>
								<input type="radio" name="color" value="육각형">
							</div>
							<div>육각형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 9%;">
							<div>
								<input type="radio" name="color" value="팔각형">
							</div>
							<div>팔각형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 9%;">
							<div>
								<input type="radio" name="color" value="기타">
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
					<div class="Type">
						<div style="border: 1px solid hidden; float: left; width: 30%;">
							<div>
								<input type="radio" name="color" value="정제류">
							</div>
							<div>정제류</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 30%;">
							<div>
								<input type="radio" name="color" value="경질캡슐">
							</div>
							<div>경질캡슐</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 30%;">
							<div>
								<input type="radio" name="color" value="연질캡슐">
							</div>
							<div>연질캡슐</div>
						</div>
					</div>
					<br>
					<hr>
					<div class="Type">
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="color" value="없음">
							</div>
							<div>없음</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="color" value="(-)형">
							</div>
							<div>(-)형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="color" value="(+)형">
							</div>
							<div>(+)형</div>
						</div>
						<div style="border: 1px solid hidden; float: left; width: 25%;">
							<div>
								<input type="radio" name="color" value="기타">
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
					<li class="breadcrumb-item">약 리스트</li>
				</ol>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>이미지</th>
						<th>이름</th>
						<th>내용</th>
						<th>평균별점</th>
						<th>조회수</th>
					</tr>
				</thead>
		<c:forEach items="${medicineList}" var="medicine">
				<tbody>
					<tr>
						<td>${medicine.mdImage}</td>
						<td><a href="SelectMedicine.do?mdIdx=${medicine.mdIdx}">${medicine.mdTitle}</td>
						<td>${medicine.mdAppr}</td>
						<td>[별점이미지]&nbsp;<!--${medicine.mdRating} --></td>
						<td>${medicine.mdHits}</td>
					</tr>
				</tbody>
	</c:forEach>
			</table>
			
				<ul class="pagination">
                    <li class="page-item">
                      <b href="#" class="page-link">이전</b>
                    </li>
                    <li class="page-item">
                      <b href="#" class="page-link">1</b>
                    </li>
                    <li class="page-item">
                      <b href="#" class="page-link">2</b>
                    </li>
                    <li class="page-item">
                      <b href="#" class="page-link">3</b>
                    </li>
                    <li class="page-item">
                      <b href="#" class="page-link">4</b>
                    </li>
                    <li class="page-item">
                      <b href="#" class="page-link">5</b>
                    </li>
                    <li class="page-item">
                      <b href="#" class="page-link">6</b>
                    </li>
                    <li class="page-item">
                      <b href="#" class="page-link">7</b>
                    </li>
                    <li class="page-item">
                      <b href="#" class="page-link">8</b>
                    </li>
                    <li class="page-item">
                      <b href="#" class="page-link">9</b>
                    </li>
                    <li class="page-item">
                      <b href="#" class="page-link">10</b>       
                    </li>
                    <li class="page-item">
                      <b href="#" class="page-link">다음</b>
                    </li>
                  </ul>
			
			
			
	</div>
</body>
<%@ include file="../../../common/bottom.jsp"%>
</html>