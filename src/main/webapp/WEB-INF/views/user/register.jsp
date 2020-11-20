<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOMEDICINE:::회원가입</title>
<link rel="stylesheet" href="css/register_styles.css" />
<link rel="stylesheet" href="css/all.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link 	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"	rel="stylesheet" id="bootstrap-css">
<script type="text/javascript"	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<%@ include file="../../../common/top.jsp"%>
	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h3>HOMEDICINE</h3>
				<a href="login.html"><input type="submit" name="login"
					value="이미 가입하셨나요?" /></a><br />
			</div>
			<div class="col-md-9 register-right">
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade active show" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<h3 class="register-heading">회원가입</h3>
						<form action="insert_Reg.do">
							<div class="row register-form">
								<div class="col-md-6">
									<div class="form-group">
										아이디 <input type="text" id="userID" name="userID"
											class="form-control" placeholder="ID" value="" /> 
									<div class="check_font" id="id_check"></div>
									</div>
									<div class="form-group">
										비밀번호 <input type="password" id="userPW" name="userPW"
											class="form-control" placeholder="Password" value="" />
									</div>
									<div class="form-group">
										비밀번호 확인 <input type="password" id="re-password"
											class="form-control" placeholder="Confirm Password" value="" />
									</div>
									<div class="form-group">
										이름 <input type="text" id="uName" name="uName"
											class="form-control" placeholder="Name" value="" />
									</div>
									<div class="form-group">
										생년월일 <input type="text" id="uBirth" name="uBirth"
											class="form-control" placeholder="Birthday" maxlength="6"
											value="" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										전자메일 <input type="email" id="uEmail" name="uEmail"
											class="form-control" placeholder="Email *" value="" />
									</div>
									<div class="form-group">
										연락처('-'를 제외하고 입력해주세요.) <select class="form-control col-md-3"
											id="uPhCD" name="uPhCD" required="required"><option
												value="">---</option>
											<option value="01">010</option>
											<option value="02">011</option>
											<option value="03">016</option>
											<option value="04">017</option>
											<option value="05">019</option>
										</select> <input type="text" id="uPhNum" name="uPhNum" minlength="7"
											maxlength="8" name="txtEmpPhone" class="form-control"
											placeholder="Phone Number" value="" />
									</div>
									<div class="form-group">
										주소입력<br> <input type="text" name="uPostNum" minlength="5"
											maxlength="5" id="uPostNum" class="postcodify_postcode5"
											placeholder="우편번호" value="" /> <input type="button"
											id="postcodify_search_button" class="btnSearch" value="주소검색"><br>
										<input type="text" name="address" id="address"
											class="postcodify_address" placeholder="주소" value="" /><br>
									</div>
									<div class="form-group">
										프로필이미지 <input type="file" id="uProfile" name="uProfile"
											class="form-control" placeholder="" value="" />
									</div>
									<div class="form-group">
										<input type="checkbox" id="uMailCon" name="uMailCon" /> 광고수신
										동의
									</div>
									<div class="form-group">
										<input type="submit" id="submit" class="btnRegister" id="reg_submit"
											value="가입하기" />
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
		<%@ include file="../../../common/bottom.jsp"%>
	<!-- 아이디 중복체크 -->
	<script>
		// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
		$("#userID")
				.blur(
						function() {
							var user_id = $('#userID').val();
							$
									.ajax({
										url : '${pageContext.request.contextPath}/user/idCheck?userId='
												+ userID,
										type : 'get',
										success : function(data) {
											console.log("1 = 중복o / 0 = 중복x : "
													+ data);

											if (data == 1) {
												// 1 : 아이디가 중복되는 문구
												$("#id_check").text(
														"사용중인 아이디입니다 :p");
												$("#id_check").css("color",
														"red");
												$("#reg_submit").attr(
														"disabled", true);
											} else {

												if (idJ.test(userID)) {
													// 0 : 아이디 길이 / 문자열 검사
													$("#id_check").text("");
													$("#reg_submit").attr(
															"disabled", false);

												} else if (user_id == "") {

													$('#id_check').text(
															'아이디를 입력해주세요 :)');
													$('#id_check').css('color',
															'red');
													$("#reg_submit").attr(
															"disabled", true);

												} else {

													$('#id_check')
															.text(
																	"아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
													$('#id_check').css('color',
															'red');
													$("#reg_submit").attr(
															"disabled", true);
												}

											}
										},
										error : function() {
											console.log("실패");
										}
									});
						});
	</script>
	<!-- 아이디 중복체크 -->


	<!-- 우편번호 가져오기 -->
	<script>
		$(function() {
			$("#postcodify_search_button").postcodifyPopUp();
		});
	</script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<!-- 우편번호 가져오기 -->

</body>
</html>