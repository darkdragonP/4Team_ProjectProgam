<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../../../common/top.jsp"%>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="container">

		<h2>
			<font color="black"> 약관련 정보 게시판 <img src="images/logo.png" style="width: 3.5%; height: 3.5%;" /></font>
		</h2>
		
			<img src="images/board2.jpg" alt="board" width="1110px" height="400px" align="right">
							
				<!-- Page Content -->
				<div class="breadcrumb-main">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">게시판 수정하기</li>
					</ol>
				</div>
			
							<hr>
							<div class="control-group form-group">
              					<div class="controls">
                					<label><strong>※ 제목</strong></label>
               						<input type="title" class="form-control" id="title"  maxlength="50" title="제목을 입력하세요" required="" aria-invalid="false">
               						
               						<label><strong>※ 이름</strong></label>
               						<input type="title" class="form-control" id="name"  maxlength="15"  title="이름을 입력하세요" required="" aria-invalid="false">
               						
               						<label><strong>※ 비밀번호</strong></label>
               						<input type="title" class="form-control" id="pw"  maxlength="15"  title="비밀번호를 입력하세요" required="" aria-invalid="false">
               						
               						<label><strong>※ 질문유형</strong></label>
									<select id="gubun" name="gubun" class="ipt01" title="쿠폰선택">
									<option value="" selected="selected">- 질문유형 선택 -</option>								
									<option value="">결제 관련 문의</option>
									<option value="">추가할 것1</option>
									<option value="">추가할 것2</option>
									<option value="">추가할 것3</option>
									<option value="">기타</option>
									</select>
							<div class="control-group form-group">
              					<div class="controls">
              						<label><strong>※ 내용</strong></label>
               						<input type="checkbox" id="ChkSecret" title="비밀글로 등록을 하려면 체크해야합니다" onchange="chgSec();" class="check">
									<label for="secret">비밀글 사용</label>
									<!-- ↓이 부분이 내용 관련된 소스 -->									
                					<textarea rows="10" cols="50" class="form-control" id="message" required="" maxlength="1500" style="resize:none" aria-invalid="false"></textarea>
									              						
              						<div class="help-block"></div>
              					</div>
           					 </div>
           					 <hr>
           					<button class="btn btn-secondary" type="button" >삭제</button>
           					<span style="float:right;"> <!-- 가운데로 옮길때는 <center></center>  -->
           					<button class="btn btn-secondary" type="button" >
           					<a href="selectBoard.do">저장</a></button>
           					<button class="btn btn-secondary" type="button">
           					<a href="boardList.do">게시판 돌아가기</a></button>
               				</span>
               				<br>
               				<br>				
		
	</div>
</body>
<!--footer starts from here-->
<%@ include file="../../../common/bottom.jsp"%>
</html>