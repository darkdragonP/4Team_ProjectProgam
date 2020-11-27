<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOMEDICINE:::회원가입</title>
<link rel="stylesheet" href="css/register_styles.css" />
<link rel="stylesheet" href="css/all.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
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
						<form action="insert_Reg.do" method="post">
							<div class="row register-form">
								<div class="col-md-6">
									<div class="form-group">
										아이디 <input type="text" id="userID" name="userID"
											class="form-control" placeholder="ID" value="" /> <input
											type="button" id="id-check" onclick="idOverlap()"
											value="중복체크"> <br />
										<span id="confirmId"></span>
									</div>
									<div class="form-group">
										비밀번호 <input type="password" id="userPW" name="userPW"
											class="form-control" placeholder="Password" value="" />
									</div>
									<div class="form-group">
										비밀번호 확인 <input type="password" id="re-password"
											name="re-password" class="form-control"
											placeholder="Confirm Password" value="" />
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
										<input type="radio" id="uMailCon" name="uMailCon" checked value="0"/> 광고수신
										동의  <input type="radio" id="uMailCon" name="uMailCon" value="1"/> 광고수신
										미동의
									</div>
									<div class="form-group">
										<input type="button" class="btnRegister" id="reg_submit"
											onclick="test()" value="가입하기" />
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
		function idOverlap() {
			var idCheck = document.getElementById("userID").value;
			var confirmId = document.getElementById("confirmId");

			$.ajax({
				type : "POST",
				url : "idoverlap.do",
				data : {
					"userID" : idCheck
				}, //form의 name과 상관없다
				dataType : "text",
				success : function(data) {//성공시
					if (data == "OK") {
						confirmId.style.color = "#0000ff";
						confirmId.innerHTML = "사용 가능한 아이디입니다.";
					} else {
						confirmId.style.color = "#ff0000";
						confirmId.innerHTML = "사용 중인 아이디입니다.";
					}
				},
				error : function() {//실패시
					alert("idOverlap함수 통신 실패");
				}
			});
		}
	</script>

	<!-- 아이디 중복체크 끝 -->

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
	<!-- 비밀번호 매치 끝 -->
	<!-- 우편번호 가져오기 -->
	<script>
		$(function() {
			$("#postcodify_search_button").postcodifyPopUp();
		});
	</script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<!-- 우편번호 가져오기 끝 -->

</body>
</html>