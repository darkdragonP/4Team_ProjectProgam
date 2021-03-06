<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>HOMEDICINE:::비밀번호 찾기</title>
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
				<div class="card" style="padding: 8px">
					<h5>비밀번호 찾기</h5>
					<div class="input-group flex-nowrap" style="padding: 8px">
						<div class="input-group-prepend">
							<span class="input-group-text" style="width: 45px"
								id="addon-wrapping"><i class="fa fa-id-card"
								style="width: 100%"></i></span>
						</div>
						<input type="text" name="userID" id="userID" class="form-control"
							placeholder="아이디를 입력해주세요." required aria-label="Username"
							aria-describedby="addon-wrapping">
					</div>
					<div class="input-group flex-nowrap" style="padding: 8px">
						<div class="input-group-prepend">
							<span class="input-group-text" style="width: 45px"
								id="addon-wrapping"><i class="fa fa-envelope"
								style="width: 100%"></i></span>
						</div>
						<input type="email" name="uEmail" id="uEmail" class="form-control"
							placeholder="이메일을 입력해주세요." required aria-label="Username"
							aria-describedby="addon-wrapping">
					</div>
					<button type="submit" style="margin: 8px" class="btn btn-primary"
						id="findPw">비밀번호 찾기</button>
				</div>
				<span id="PWList"></span>
			</div>
		</div>
	</div>
	<%@ include file="../../../common/bottom.jsp"%>
	<!-- 비밀번호 찾기 -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script>
		$(document)
				.on(
						'click',
						'#findPw',
						function() {
							var userID = $('#userID').val();
							var uEmail = $('#uEmail').val();

							var postData = {
								userID : userID,
								uEmail : uEmail
							};

							$
									.ajax({
										url : 'findingPw.do',
										type : 'POST',
										data : postData,
										contentType : "application/x-www-form-urlencoded; charset=UTF-8",
										dataType : "text",
										success : function(data) {
											console.log(data);
											document.querySelector("#PWList").innerHTML = "<h3><br>"
													+ "회원님의 정보로 등록된 비밀번호는 : "
													+ data + " 입니다.</h3>";
										},
										error : function(XMLHttpRequest,
												textStatus, errorThrown) {

											alert('정보를 다시 입력해주시기 바랍니다.');
										}
									});
						});
	</script>
	<!-- 비밀번호 찾기 끝 -->
</body>
</html>