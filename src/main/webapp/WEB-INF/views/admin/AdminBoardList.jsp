<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css?after" />
<%@ include file="../../../common/top.jsp"%>

<head>
<meta charset="EUC-KR">
<title>MEDICINE</title>
</head>
<body>
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
						<li><h3>
								<strong><div align="left">신고글 관리</strong>
							</h3></li>
						<br>
						<br>
						<hr>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>

						<hr>

						<h6>
							<br> <br> <br>
							<li><a href="adminMain.do"> 관리자 홈 </a></li>
						</h6>
						<li><a href="main.jsp"><h6>메인 홈</h6></a></li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Page Content -->
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">신고 글 리스트</li>
			</ol>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>신고 누적 횟수</th>
				</tr>
			</thead>
			<c:forEach items="${AdminMedicineList}" var="adminMedicine">
				<tbody>
					<tr>
						<td>${adminMedicine.mdImage}</td>
						<td><a
							href="SelectAdminMedicine.do?mdIdx=${adminMedicine.mdIdx}">${adminMedicine.mdTitle}</a></td>
						<td>${adminMedicine.mdAppr}</td>
						<td>${adminMedicine.mdRating}</td>
						<td>${adminMedicine.mdRating}</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
		<ul class="pagination">
			<c:if test="${mdBCounts.curRange ne 0}">
				<li class="page-item"><b class="page-link"><a
						href="AdminMedicineList.do?curRange=${mdBCounts.curRange}&result=1">이전</a></b></li>
			</c:if>
			<c:forEach var="pageNum" begin="${mdBCounts.startPage}"
				end="${mdBCounts.endPage}">
				<c:choose>
					<c:when test="${pageNum eq  mdBCounts.curPage}">
						<span style="font-weight: bold;"><b class="page-link"
							style="background-color: lightpink;"><a
								href="AdminMedicineList.do?curPage=${pageNum}&curRange=${mdBCounts.curRange}&startp=${mdBCounts.startPage}&endp=${mdBCounts.endPage}"
								onClick="fn_paging('${pageNum }')">${pageNum }</a></b></span>
					</c:when>
					<c:otherwise>
						<li><b class="page-link"> <a
								href="AdminMedicineList.do?curPage=${pageNum}&curRange=${mdBCounts.curRange}&startp=${mdBCounts.startPage}&endp=${mdBCounts.endPage}">${pageNum}</a></b></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${mdBCounts.curRange+1 ne mdBCounts.rangeCnt}">
				<li class="page-item"><b class="page-link"><a
						href="AdminMedicineList.do?curRange=${mdBCounts.curRange}&result=2">다음</a></b></li>
			</c:if>
		</ul>
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
<%@ include file="../../../common/bottom.jsp"%>
</html>