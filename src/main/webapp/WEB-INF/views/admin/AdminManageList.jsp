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
	<div class="container">
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
								<strong><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;등록된</div>약
									관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
							</h3></li>
						<br>
						<br>
						<li><a href="AdminInsertMedicine.do"><span
								class="icon solid fa-th"><h6>신규 약 추가</h6></span></a></li>
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

		<h2 class="sub-header">
			신고 게시물 현황 <img src="images/logo.png"
				style="width: 3.5%; height: 3.5%;" />
		</h2>
		<!-- 		<img src="images/board1.jpg" alt="board" width="1110px" height="400px"
			align="right">
 -->


		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">신고 게시글 목록</li>
			</ol>
		</div>
		<strong>신고 건수 검색</strong>
		<form action="searchCryBoard.do" method="post">
			<input type="text" class="bbs_search_input text" placeholder="최소값"
				name="startC"> ~ <input type="text" class="bbs_search_input text"
				placeholder="최대값" name="endC" />
			<button type="submit">검색</button>
		</form>
		<br>



		<table class="table table-striped">
			<thead>
				<tr>
					<th>No.</th>
					<th>제목</th>
					<th>작성일</th>
					<th>작성자</th>
					<th>조회</th>
					<th>좋아요</th>
					<th>신고누적</th>
					<th></th>
				</tr>
			</thead>
			<c:forEach items="${boardList}" var="board">
				<form name="del_${board.bIdx}" action="deleteBoard.do" method="post">
					<input type="hidden" name="bIdx" value="${board.bIdx}">
				</form>
				<tbody>
					<tr>
						<td>${board.bIdx}</td>
						<td>${board.bTitle}</td>
						<td>${board.bDate}</td>
						<td>${board.uName}</td>
						<td>${board.bHits}</td>
						<td>${board.bRating}</td>
						<td>${board.bCry}</td>
						<td><input type="button"
							onclick="location='javascript:document.del_${board.bIdx}.submit();'" value="삭제"/></td>

					</tr>
				</tbody>
			</c:forEach>
		</table>
		<div class="total_page">
			<hr>
			<!-- 콘텐츠 내용에서 주제가 바뀔 때 사용할 수 있는 수평 가로선을 정의할 때 사용 -->
			<span>전체 ${mdBCounts.endPage}</span> <span>Page<strong>${mdBCounts.startPage}</strong>/${mdBCounts.endPage}
			</span>

		</div>
		<ul class="pagination">
			<c:if test="${mdBCounts.curRange ne 0}">
				<li class="page-item"><b class="page-link"><a
						href="boardList.do?curRange=${mdBCounts.curRange}&result=1">이전</a></b></li>
			</c:if>
			<c:forEach var="pageNum" begin="${mdBCounts.startPage}"
				end="${mdBCounts.endPage}">
				<c:choose>
					<c:when test="${pageNum eq  mdBCounts.curPage}">
						<span style="font-weight: bold;"><b class="page-link"
							style="background-color: lightpink;"><a
								href="boardList.do?curPage=${pageNum}&curRange=${mdBCounts.curRange}&startp=${mdBCounts.startPage}"
								onClick="fn_paging('${pageNum }')">${pageNum }</a></b></span>
					</c:when>
					<c:otherwise>
						<li><b class="page-link"> <a
								href="boardList.do?curPage=${pageNum}&curRange=${mdBCounts.curRange}&startp=${mdBCounts.startPage}">${pageNum}</a></b></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${mdBCounts.curRange+1 ne mdBCounts.rangeCnt}">
				<li class="page-item"><b class="page-link"><a
						href="boardList.do?curRange=${mdBCounts.curRange}&result=2">다음</a></b></li>
			</c:if>
		</ul>


		<div class="bbs_list_search" align="center">
			<!-- 원하는 부분을 가운데로 옮겨주는 기능 -->
			<fieldset>
				<select name="searchCnd" class="bbs_search_select select"
					title="검색어 선택">
					<option value="0">제목</option>
					<option value="1">내용</option>
					<option value="2">작성자</option>
				</select> <input type="text" id="searchWrd" name="searchWrd" value=""
					class="bbs_search_input text" title="검색어를 입력하세요."> <input
					type="image" src="images/search.png" onclick="goSearchWrd();"
					alt="검색" class="image">
			</fieldset>

		</div>
	</div>
	<br>
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