<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="../../../common/top.jsp"%>
<link href="css/board.css" rel="stylesheet">
<head>
<meta charset="EUC-KR">
<title>MEDICINE</title>
</head>
<body>
	<div class="container">

		<h2 class="header" style="color: #EF746F;">
			<a href="boardList.do"
				class="flex flex-column items-center justify-center color-inherit w-100 pa2 br2 br--top no-underline hover-bg-blue4 hover-white"
				style="font-size: 30px;"><i class="fas fa-chalkboard-teacher"
				style="color: #EF746F;">&nbsp;약 관련 정보 게시판</i></a>
		</h2>
		<!-- 		<img src="images/board1.jpg" alt="board" width="1110px" height="400px"
			align="right">
 -->
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">게시판 글 목록</li>
			</ol>
		</div>
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
				</tr>
			</thead>
			<c:forEach items="${boardList}" var="board">
				<tbody>
					<tr>
						<td>${board.bIdx}</td>
						<td><a href="selectBoard.do?bIdx=${board.bIdx}">${board.bTitle}</a></td>
						<td>${board.bDate}</td>
						<td>${board.uName}</td>
						<td>${board.bHits}</td>
						<td>${board.bRating}</td>

					</tr>
				</tbody>
			</c:forEach>
		</table>
		<div class="total_page">
			<hr>
			<!-- 콘텐츠 내용에서 주제가 바뀔 때 사용할 수 있는 수평 가로선을 정의할 때 사용 -->
			<span>전체 ${mdBCounts.endPage}</span> <span>Page<strong>${mdBCounts.startPage}</strong>/${mdBCounts.endPage}
			</span> <span style="float: right;"><span class="input-group-btn">
					<c:choose>
						<c:when test="${empty uIdx}">
							<button class="btn btn-secondary" type="button"
								onclick="alert('로그인 후 이용가능합니다.')">새 글 등록</button>
						</c:when>
						<c:otherwise>
							<button class="btn btn-secondary" type="button"
								onclick="location.href='insertBoard.do'">새 글 등록</button>
						</c:otherwise>
					</c:choose>

			</span>
		</div>
		<c:if test="${mdBCounts.listCnt ne 0}">
			<ul class="pagination"
				style="display: flex; justify-content: center; align-items: center";>
				<c:if test="${mdBCounts.curRange ne 0}">
					<li class="page-item"><b class="page-link"><a
							href="boardList.do?curRange=${mdBCounts.curRange}&result=1"><</a></b></li>
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
							href="boardList.do?curRange=${mdBCounts.curRange}&result=2">></a></b></li>
				</c:if>
			</ul>
		</c:if>


		<div class="bbs_list_search" align="center">
			<!-- 원하는 부분을 가운데로 옮겨주는 기능 -->
			<fieldset>
				<form action="searchTextBoard.do">
					<select name="searchCnd" class="bbs_search_select select"
						title="검색어 선택">
						<option value="BOARD_TITLE">제목</option>
						<option value="BOARD_CONTENTS">내용</option>
						<option value="NAME">작성자</option>
					</select> <input type="text" name="textBoard" class="bbs_search_input text"
						placeholder="검색어를 입력하세요."> <input type="image"
						src="images/search.png" alt="검색" class="image">
				</form>
			</fieldset>

		</div>
	</div>
	<br>
	<c:if test="${!empty comment}">
		<script type="text/javascript">
			alert("현재 자료가 없습니다.");
		</script>
	</c:if>
</body>
<%@ include file="../../../common/bottom.jsp"%>
</html>