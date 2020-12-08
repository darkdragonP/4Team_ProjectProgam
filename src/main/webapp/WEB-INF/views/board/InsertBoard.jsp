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
				<li class="breadcrumb-item">게시판 등록하기</li>
			</ol>
		</div>
		<hr>
		<form action="InsertBoard.do" method="post">
			<label><strong>제목</strong></label> <input type="text"
				class="form-control" id="bTitle" name="bTitle" required placeholder="제목을 입력하세요"  maxlength="20">
			<br> <label><strong>내용</strong></label>
			<div class="control-group form-group">
				<div class="controls">
					<textarea rows="10" cols="1000" class="form-control" id="bContents"
						name="bContents" required placeholder="내용을 입력하세요" maxlength="999"></textarea>
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