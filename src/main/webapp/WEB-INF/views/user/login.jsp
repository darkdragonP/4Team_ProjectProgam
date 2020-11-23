<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>HOMEDICINE:::로그인</title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="stylesheet" href="css/login_styles.css">
	<link rel="stylesheet" href="css/all.css" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<%@ include file="../../../common/top.jsp"%>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3><b>HOMEDICINE</b></h3>				
			</div>
			<div class="card-body">
				<form action="login.do" method="POST">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user" style="width: 100px;"></i></span>
						</div>
						<input type="text" id="userID" name="userID" class="form-control" placeholder="아이디">
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key" style="width: 100px;"></i></span>
						</div>
						<input type="password" id="userPW" name="userPW" class="form-control" placeholder="비밀번호">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">아이디 기억
					</div>
					<p>
					<div class="form-group">
						<input type="submit" id="btnLog" name="login" value="로그인" class="btn float-center login_btn"><br>							
					</div>
				</form>
					<input type="submit" value="네이버로 시작" class="btn float-left naver_btn">
					<input type="submit" value="카카오로 시작" class="btn float-right kakao_btn"><br><br>
					<input type="submit" value="구글로 시작" class="btn float-left google_btn">
					<input type="submit" value="페이스북으로 시작" class="btn float-right face_btn">					
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					아직 계정이 없다면, <a href="register.do">지금 가입하기</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="findIDPW.do">아이디/비밀번호 찾기</a>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../../../common/bottom.jsp"%>

	<script>
$(function () {

	$("#btnLog").click(function () {
			let title = $("#userID").val()
			if (title === "") {
				alert("아이디를 입력해주세요.")
				$("#userID").focus()
				return false
			}
	})
	
	$("#btnLog").click(function () {
			let title = $("#userPW").val()
			if (title === "") {
				alert("비밀번호를 입력해주세요.")
				$("#userPW").focus()
				return false
			}
	})
	
	$("#btnLog").click(function login(){
			var userID = $('#userID').val();
			var userPW = $('#userPW').val();
			$.ajax({
				type:"POST",
				url: 'user/login.do',
				data:{userID :userID, userPW : userPW},
				success: function(data){
					 if(data) {
		          		 data = data.trim();
		          	 }
					 if(data !== "") {
		                 window.location.href = "user/login.do";
		              } else {
		                 alert("아이디나 비밀번호를 다시 확인해주세요.");
		                 $("#userID").val("");
		                 $("#userPW").val("");
		             }
				}
	})
	})
	
})
	
	</script>

</body>
</html>