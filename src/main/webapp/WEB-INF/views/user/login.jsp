<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>HOMEDICINE:::로그인</title>
	<link rel="stylesheet" href="css/login_styles.css">
	<link rel="stylesheet" href="css/all.css" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3><b>HOMEDICINE</b></h3>				
			</div>
			<div class="card-body">
				<form>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user" style="width: 100px;"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="아이디">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key" style="width: 100px;"></i></span>
						</div>
						<input type="password" class="form-control" placeholder="비밀번호">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">아이디 기억
					</div>
					<p>
					<div class="form-group">
						<input type="submit" value="로그인" class="btn float-center login_btn"><br>							
					</div>
					<input type="submit" value="네이버로 시작" class="btn float-left naver_btn">
					<input type="submit" value="카카오로 시작" class="btn float-right kakao_btn"><br><br>
					<input type="submit" value="구글로 시작" class="btn float-left google_btn">
					<input type="submit" value="페이스북으로 시작" class="btn float-right face_btn">					
				</form>
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
</body>
</html>