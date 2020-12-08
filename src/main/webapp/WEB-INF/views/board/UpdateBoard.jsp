<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../../../common/top.jsp"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>
			<font color="black"> 약관련 정보 게시판 <img src="images/logo.png"
				style="width: 3.5%; height: 3.5%;" /></font>
		</h2>
		<!-- Page Content -->
		<div class="breadcrumb-main">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">게시판 수정하기</li>
			</ol>
		</div>
		<hr>
		<form action="updateBoard2.do" method="post">
		<input type="hidden" name="bIdx" value="${board.getbIdx()}" >
			<label><strong>제목</strong></label> <input type="text"
				class="form-control" id="bTitle" name="bTitle"
				value="${board.getbTitle()}" maxlength="20"> <br> <label><strong>내용</strong></label>
			<div class="control-group form-group">
				<div class="controls">
					<textarea rows="10" cols="1000" class="form-control" id="bContents"
						name="bContents"  maxlength="999">${board.getbContents()}</textarea>
				</div>
			</div>
			<span style="float: right;">
				<button class="btn btn-secondary" type="submit">저장</button>
		</form>
		<button class="btn btn-secondary" type="button"
			onclick="location.href='boardList.do'">게시판 돌아가기</button>
		</span> <br> <br>
	</div>
</body>
<!--footer starts from here-->
<%@ include file="../../../common/bottom.jsp"%>
</html>