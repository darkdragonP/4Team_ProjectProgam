<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../../../common/top.jsp"%>
<link rel="stylesheet" href="css/Medicine.css?after" />
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h2 class="sub-header">
			약관련 정보 게시판 <img src="images/logo.png"
				style="width: 3.5%; height: 3.5%;" />
		</h2>
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">게시판</li>
			</ol>
		</div>
		<c:if test="${board.getuIdx() == uIdx}">
			<form name="upBoard" action="updateBoard.do" method="post">
				<input type="hidden" name="bIdx" value="${board.getbIdx()}">
			</form>
			<form name="deBoard" action="deleteBoard.do" method="post">
				<input type="hidden" name="bIdx" value="${board.getbIdx()}">
			</form>
		</c:if>

		<div class="row">
			<!-- Blog Entries Column -->
			<div class="col-md-12">
				<div id="content">

					<div id="size_ct" class="size_ct_v2">
						<div class="att_type">
							<form name="bR" action="insertbMark.do" method="post">
								<input type="hidden" name="bIdx" value="${board.getbIdx()}">
								<input type="hidden" name="bmr" value="${board.getbRating()}">
							</form>
							<form name="bC" action="insertBCry.do" method="post">
								<input type="hidden" name="bIdx" value="${board.getbIdx()}">
								<input type="hidden" name="bcry" value="${board.getbCry()}">
							</form>
							<h3>
								<strong>${board.getbTitle()}</strong>
							</h3>
							<button onclick="javascript:document.upBoard.submit();">수정</button>
				<button onclick="javascript:document.deBoard.submit();">삭제</button>
							<hr>
							작성자 : ${board.getuName()} <br>
							<hr>
							<br>
						</div>
						<!-- Sidebar Widgets Column -->
						<div class="col-md-20 blog-right-side">
							<!-- Categories Widget -->
							<div class="card my-4">
								<div class="card-body">${board.getbContents()}</div>
							</div>
							<center>
								공감이 가신다변 해당 버튼을 클릭!<br>
								<button onclick="javascript:document.bR.submit();">공감</button>
								<button onclick="javascript:document.bC.submit();">신고</button>
							</center>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="blog-right-side">
			<!-- Comments Form -->

			<div class="card my-12">

				<h5 class="card-header">댓글 등록</h5>
				<div class="card-body">
					<br>
					<c:choose>
						<c:when test="${empty uIdx}">

							<div>
								<form action="login.do">
									<div class="form-group">
										<textarea style="width: 100%" class="form-control" rows="3"
											id="uReContent" name="uReContent" placeholder="로그인 후 이용가능합니다"></textarea>
									</div>
									<button type="submit" class="btn btn-primary">댓글 등록</button>
								</form>
							</div>
						</c:when>
						<c:otherwise>
							<div>
								<form action="insertBReply.do" method="post">
									<input type=hidden id="bIdx" name="bIdx"
										value="${board.getbIdx()}">
									<div class="form-group">
										<textarea style="width: 100%" class="form-control" rows="3"
											id="uReContent" name="uReContent" required
											placeholder="내용을 입력해주세요"></textarea>
									</div>
									<button type="submit" class="btn btn-primary">댓글 등록</button>
								</form>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<hr>
		<c:forEach items="${selectBReplyList}" var="BReplyList">

			<!-- Single Comment -->
			<c:if test="${BReplyList.uIdx == uIdx}">
				<a
					href="deleteBReply.do?uReIdx=${BReplyList.uReIdx}&mdIdx=${BReplyList.BIdx}"
					class="delete">삭제&nbsp;&nbsp;</a>
			</c:if>
			<br>
			<br>

			<!-- Single Comment -->
			<div class="media mb-4">
				<div class="media-body">
					<h6 class="mt-0">${BReplyList.uName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${BReplyList.uReDate}</h6>
					${BReplyList.uReContent}
				</div>
			</div>
			<hr>
		</c:forEach>
	</div>
	<br>
	<br>
	<br>


	<div class="container">
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
					<button class="btn btn-secondary" type="button"
						onclick="location.href='insertBoard.do'">새 글 등록</button>


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
				<form action="searchTextBoard.do">
					<select name="searchCnd" class="bbs_search_select select"
						title="검색어 선택">
						<option value="BOARD_TITLE">제목</option>
						<option value="BOARD_CONTENTS">내용</option>
						<option value="NAME">작성자</option>
					</select> <input type="text" name="textBoard" class="bbs_search_input text"
						placeholder="검색어를 입력하세요."> <input type="image"
						src="images/search.png"  alt="검색"
						class="image">
				</form>
			</fieldset>

		</div>
	</div>
	<br>
	<!-- /.row -->
	<!-- /.container -->
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/star.js"></script>
</body>
<!--footer starts from here-->
<%@ include file="../../../common/bottom.jsp"%>
</html>