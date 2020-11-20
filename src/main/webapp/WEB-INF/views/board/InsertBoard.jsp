<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>8"%>
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
					<font color="black"> 약관련 정보 게시판 <img src="images/logo.png" style="width: 3.5%; height: 3.5%;" /></font>
				</h2>
		
					<img src="images/board2.jpg" alt="board" width="1110px" height="400px" align="right">
							
						<!-- Page Content -->
						<div class="breadcrumb-main">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">게시판 등록하기</li>
							</ol>
						</div>
						
							<!-- <colgroup>
								<col width="12%">
								<col width="*">
							</colgroup> 컬럼값 간격 조정-->

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
             					<span style="float:right;"> <!-- 가운데로 옮길때는 <center></center>  -->
           					<button class="btn btn-secondary" type="button" >
           					<a href="selectBoard.do">저장</a></button>
           					<button class="btn btn-secondary" type="button">
           					<a href="boardList.do">게시판 돌아가기</a></button>
               				</span>
               				<br>
               				
							<!-- <tbody><tr>
								<th scope="row"><label for="title"><span>※ </span>제목</label></th>
								<td> <input type="text" class="form-control" id="title" name="title" maxlength="50" class="txt_type4 text" style=width:700px value="" title="제목을 입력하세요" style="ime-mode:active;"></td>
							</tr>
							<tr>
								<th scope="row"><label for="writer"><span>※ </span>이름</label></th>
								<td>
									<input type="text" class="form-control" id="_writer" maxlength="15" class="txt_type3 text" style=width:200px value="" title="이름을 입력하세요" style="ime-mode:active;">
									<input type="hidden" id="writer" name="writer" maxlength="20" class="txt_type3" value="" title="이름을 입력하세요" style="ime-mode:active;">
								</td>
							</tr>  -->
							 
							 <!-- <input type="hidden" id="email" name="email" class="entry" title="이메일체크">
							 <input type="hidden" id="email1" name="email1" class="entry" title="이메일앞" value="***">
							 <input type="hidden" id="email2" name="email2" class="entry" title="이메일뒤" value="***.***"> -->
							
							<!-- <tr>
								<th scope="row"><label for="pw"><span>※ </span>비밀번호</label></th>
								<td>
									<input type="text" class="form-control" id="pw" maxlength="20" class="txt_type3 text" style=width:200px style="ime-mode:disabled; " value="" title="연락처를 입력하세요">
									<input type="hidden" id="pw" name="pw" maxlength="20" class="txt_type3" style="ime-mode:disabled; " value="" title="연락처를 입력하세요">
							   </td>
							</tr>
							
							<tr>
								<th scope="row"><label for="gubun"><span>※ </span>질문유형</label></th>
								<td>
									<select id="gubun" name="gubun" class="ipt01" title="쿠폰선택"><option value="" selected="selected">= 질문유형 선택 =</option></select>								
								</td>
							</tr>  -->
							<!-- 로그인 회원일 경우만 가능 -->
															
						<!--<tr>
								<th scope="row">비밀글 설정</th>
								<td>
									<input type="checkbox" id="ChkSecret" title="비밀글로 등록을 하려면 체크해야합니다" onchange="chgSec();" class="check">
									<label for="secret">비밀글 사용</label></td>								
								</tr>								
							
							<tr>
								<th scope="row"><label for="lost_place"><span>※ </span>내용</label></th>
							<td> 
								<textarea cols="50" rows="10" class="form-control" id="title" name="title" maxlength="4000" class="txt_type4 text" style=width:700px value="" title="제목을 입력하세요" style="ime-mode:active;">
								</textarea>
							</td>
							</tr> -->
								
						<!--<tr>
								<th scope="row">첨부파일</th>
								<td colspan="">
								<table style="border:none">
				 			<tr>
				 		<tbody>
				 		<td> -->

			 			<!--<input type="hidden" id="F_atchFileId" name="atchFileId" value="">
							<input type="hidden" id="F_fileListCnt" name="fileListCnt" value="0">
							<input type="hidden" id="F_returnUrl" name="returnUrl" value="/customer.ques.guesForm.dp/dmparse.dm?num=&amp;cmd=U&amp;main_code=&amp;bbsId=ques">
	 					</td> 
					</tr> 
										<tr id="file_upload_posbl" style="">
											<td class="none">
												<div>
													<div id="dmFileList"></div>                                    
														<input name="file_0" id="dmFileUploader" type="file" class="ipt01 file" style="width: 330px;">
												</div>
														<input type="hidden" name="fileListCnt" id="F_fileListCnt" value="0">
												
											</td>						
										</tr>							
									</tbody></table>
									<p class="file_text" id="descTxt">*보안 정책상 4M 이하의 이미지(jpg, gif)파일 또는 압축 파일(zip) 문서(엑셀,워드,파워포인트)만 업로드 가능합니다.</p>
								</td>
							</tr>
						</tbody>
					</table>  -->
					
										<!-- <hr> --> <!-- 콘텐츠 내용에서 주제가 바뀔 때 사용할 수 있는 수평 가로선을 정의할 때 사용 -->
										<!-- <br>
											<hr>
											<br>
											 <div class="control-group form-group">
												<div class="controls">
													<label><h3>효능효과</h3></label>
													<textarea rows="5" cols="100" class="form-control"
														id="message" required
														placeholder="${medicine.getMdEffect()}"
														maxlength="999" style="resize: none"></textarea>
												</div>
											</div>
											<br>
											<hr>
											<br>  -->
											
										<!-- 	<div class="control-group form-group">
												<div class="controls">
													<label><h3>사용상 주의사항</h3></label>
													<textarea rows="5" cols="100" class="form-control"
														id="message" required
														placeholder="${medicine.getMdCapa()}"
														maxlength="999" style="resize: none"></textarea>
												</div>
											</div>  -->
											
												<!-- For success/fail messages -->
											<!-- <div>
												<button type="submit" style="align-items: right;" 
													class="btn btn-primary" id="sendMessageButton">수정하기</button>
													
												<button type="delete" style="align-items: right;"
													class="btn btn-primary" id="sendMessageButton">삭제하기</button>
													
												<button type="submit" style="align-items: right;"
													class="btn btn-primary" id="sendMessageButton">완료</button>
											</div>  -->
				<br>
			</div> 
		</div>
	</div>
</body>
<!--footer starts from here-->
<%@ include file="../../../common/bottom.jsp"%>
</html>