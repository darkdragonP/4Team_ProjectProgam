<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOMEDICINE:::회원수정</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/userdetail.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/all.css" />

</head>
<body>
	<%@ include file="../../../common/top.jsp"%>
	<div class="container">
		<h3>
			<b>${selectUser.getuName()}님의 회원정보입니다.</b>
		</h3>
		<p>
		<div class="tab-content" id="myTabContent">

			<form action=detailUser.do method="post">
				<div class="tab-pane fade show active" id="home" role="tabpanel"
					aria-labelledby="home-tab">
					<div class="row register-form">
						<div class="col-md-6">
						
						<input type="hidden" name="uIdx" value="${selectUser.getuIdx()}"/>
							<div class="form-group">
								이름 <input type="text" id="uName" name="uName"
									class="form-control" value="${selectUser.getuName()}" />
							</div>
							<div class="form-group">
								비밀번호 <input type="password" id="userPW" name="userPW"
									class="form-control" placeholder="Password"/>
							</div>
							<div class="form-group">
								비밀번호 확인 <input type="password" id="re-password" name="re-passwo rd"
									class="form-control" placeholder="Confirm Password" value="" />
							</div>
							<div class="form-group">
								생년월일 <input type="text" id="uBirth" name="uBirth"
									class="form-control" value="${selectUser.getuBirth()}" maxlength="6" value="" />
							</div>
							<div class="form-group">
								전자메일 <input type="email" id="uEmail" name="uEmail"
									class="form-control" value="${selectUser.getuEmail()}" />
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								연락처('-'를 제외하고 입력해주세요.) <select class="form-control col-md-3" value="${selectUser.getuPhCD()}"
									id="uPhCD" name="uPhCD" required="required"><option
										value="${selectUser.getuPhCD()}">---</option>
									<option value="01">010</option>
									<option value="02">011</option>
									<option value="03">016</option>
									<option value="04">017</option>
									<option value="05">019</option>
								</select> <input type="text" id="uPhNum" name="uPhNum" minlength="7"
									maxlength="8" name="txtEmpPhone" class="form-control"
									value="${selectUser.getuPhNum()}" />
							</div>
							<div class="form-group">
								주소입력<br> <input type="text" name="uPostNum" minlength="5"
									maxlength="5" id="uPostNum" class="postcodify_postcode5"
									value="${selectUser.uPostNum}" /> <input type="button"
									id="postcodify_search_button" class="btnSearch" value="주소검색"><br>
								<input type="text" name="address" id="address"
									class="postcodify_address" value="${userService.getAddress()}" /><br>
							</div>
							<div class="form-group">
								프로필이미지 <input type="file" id="uProfile" name="uProfile"
									value="${selectUser.getuProfile()}" class="form-control" />
							</div>
							<div class="form-group">
								<input type="checkbox" value="${selectUser.getuMailCon()}" id="uMailCon" name="uMailCon" />
								광고수신 동의
								<p>
									<br>
								<div class="buttons">
									<input type="submit" value="수정하기" /> <input type="submit"
										value="회원탈퇴" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="../../../common/bottom.jsp"%>
	
	<!-- 우편번호 가져오기 -->
	<script>
		$(function() {
			$("#postcodify_search_button").postcodifyPopUp();
		});
	</script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<!-- 우편번호 가져오기 -->

	<!-- 비밀번호 매치 -->
	<script type="text/javascript">
		function test() {
			var p1 = document.getElementById('userPW').value;
			var p2 = document.getElementById('re-password').value;
				if (p1 != p2) {
					alert("비밀번호가 일치 하지 않습니다");
					return false;
				} else {
					$("form").submit();
					return true;
				}
		}
	</script>
	<!-- 비밀번호 매치 -->
	</script>
</body>
</html>