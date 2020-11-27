<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>HOMEDICINE:::아이디 찾기</title>
<link rel="stylesheet" href="css/all.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css" />
<style>
html, body {
	height: 100%;
}
</style>
</head>
<body>
	<%@ include file="../../../common/top.jsp"%>
	<div class="container h-100">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-8 text-center">
				<form action="findIDs.do" method="post">
					<div class="card" style="padding: 8px">
						<h5>아이디 찾기</h5>
						<div class="input-group flex-nowrap" style="padding: 8px">
							<div class="input-group-prepend">
								<span class="input-group-text" style="width: 45px"
									id="addon-wrapping"><i class="fa fa-user"
									style="width: 100%"></i></span>
							</div>
							<input type="text" name="uName" id="uName"
								class="form-control" placeholder="이름을 입력해주세요." required
								aria-label="Username" aria-describedby="addon-wrapping">
						</div>
						<div class="input-group flex-nowrap" style="padding: 8px">
							<div class="input-group-prepend">
								<span class="input-group-text" style="width: 45px"
									id="addon-wrapping"><i class="fa fa-envelope"
									style="width: 100%"></i></span>
							</div>
							<input type="email" name="uEmail" id="uEmail"
								class="form-control" placeholder="이메일을 입력해주세요." required
								aria-label="Username" aria-describedby="addon-wrapping">
						</div>
						<input type="submit" id="loginBtn" style="margin: 8px" class="btn btn-primary"
							value="아이디 찾기">
					</div>
					<span id="print"></span>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="../../../common/bottom.jsp"%>
<!-- 아이디찾기 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#loginBtn").click(function(){
			location.href='login.do';
		})
	})
</script>
<!-- 아이디찾기 끝 -->
</body>
</html>