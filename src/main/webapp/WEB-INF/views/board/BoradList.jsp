<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="../../../common/top.jsp"%>

<head>
<meta charset="EUC-KR">
<title>MEDICINE</title>
</head>
<body>
	<div class="container">
		<!-- 			<h1 class="sub-header">
				일반 게시판
			</h1> 일반소스 -->

		<h2>
			<font color="black"> 약관련 정보 게시판 <img src="images/logo.png"
				style="width: 3.5%; height: 3.5%;" />
			</font>
		</h2>
		<img src="images/board1.jpg" alt="board" width="1110px" height="400px" align="right">

		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">게시판 글 목록</li>
			</ol>
		</div>
		<!-- // tabmenu -->
		<div style="border: 1px solid hidden; float: left; width: 10%;">
			<select class="bbs_select select" id="pageUnit" name="pageUnit"
				title="게시판 목록 갯수 선택" onchange="goSearchArticle();">
				<option value="10" selected="">10개씩 보기</option>
				<option value="20">20개씩 보기</option>
				<option value="50">50개씩 보기</option>
				<option value="100">100개씩 보기</option>
			</select>
		</div>
		<div style="border: 1px solid hidden; float: left; width: 10%;"></div>
		<div style="border: 1px solid hidden; float: left; width: 10%;"></div>
		<div style="border: 1px solid hidden; float: left; width: 10%;"></div>
		<div style="border: 1px solid hidden; float: left; width: 10%;"></div>
		<div style="border: 1px solid hidden; float: left; width: 10%;"></div>
		<div style="border: 1px solid hidden; float: left; width: 10%;"></div>
		<div style="border: 1px solid hidden; float: left; width: 10%;"></div>
		<div style="border: 1px solid hidden; float: left; width: 10%;"></div>
		<div style="border: 1px solid hidden; float: right; width: 10%;">
		<!-- <span class="btn_green btn_short"><a href="#dm" onclick="javascript:fn_goWriteForm(); return false;">게시글 작성</a> </span> 원본소스 -->
		</div>
		<br>
		<table class="table table-striped" summary="">
			<!-- bbs_list -->
			<colgroup>
				<col width="7%">
				<col width="*">
				<col width="12%">
				<col width="9%">
				<col width="9%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">No.</th>
					<th scope="col">제목</th>
					<th scope="col">작성일</th>
					<th scope="col">작성자</th>
					<th scope="col">조회</th>
				</tr>
			</thead>
			<tbody>
				<tr class="notify">
					<td><img src="images/logo2.png" alt="공지" class="icoNotice">
					</td>
					<td class="subject"><nobr>
							<div class="box">
								<a href="#none"
									onclick="goMoveArticle('DMBOARD_000000000191','13961')">
									<div class="clip">주요 웹 브라우저의 TLS 1.0 및 TLS 1.1 지원 중단 안내</div>
								</a>
							</div>
						</nobr></td>
					<td>2020.11.16</td>
					<td>관리자</td>
					<td>977</td>
				</tr>
				<tr>
					<td>1</td>
					<td class="subject"><nobr> <!-- (중요) 게시판 글 포문으로 돌리는 부분  이부분 포문으로 (c:forEach)로 바꿔줘야한다.-->
							<div class="box">
								<a href="#none"
									onclick="goMoveArticle('DMBOARD_000000000191','14335')">
									<div class="clip">
										<div style="float: left">[질문합니다]</div>
										<a href="selectBoard.do">아에이오우</a></div>
								</a>
							</div>
						</nobr></td>
					<td>2020.11.11</td>
					<td>유*민</td>
					<td>929</td>
				</tr>
			</tbody>
		</table>




		<div class="total_page">
		<hr> <!-- 콘텐츠 내용에서 주제가 바뀔 때 사용할 수 있는 수평 가로선을 정의할 때 사용 -->
			<span>전체 100</span> <span>Page<strong>1</strong>/ 5
			</span>
			<span style="float: right;"><span class="input-group-btn">
						<button class="btn btn-secondary" type="button">
						<a href="insertBoard.do">새 글 등록</a></button></span>
		</div>
		<div class="pager" align="center"> <!-- 원하는 부분을 가운데(center)로 옮겨주는 기능 / left or right -->
			<img src="images/btn_first.png" class="btn" alt="처음"> <img
				src="images/btn_prev.png" class="btn" alt="이전"> <a href="#"
				class="current">1</a> <a href="#"
				onclick="boardPageMove(2);return false;">2</a> <a href="#"
				onclick="boardPageMove(3);return false;">3</a> <a href="#"
				onclick="boardPageMove(4);return false;">4</a> <a href="#"
				onclick="boardPageMove(5);return false;">5</a> <img
				src="images/btn_next.png" class="btn" alt="다음"> <img
				src="images/btn_last.png" class="btn" alt="마지막">
		</div>


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
					type="image" src="images/search.png"
					onclick="goSearchWrd();" alt="검색" class="image">
			</fieldset>

		</div>
		</div>
</body>
<%@ include file="../../../common/bottom.jsp"%>
</html>