<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>HOMEDICINE</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="css/all.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<%@ include file="../../../common/top.jsp"%>
	<div class="container">
		<div>
			<h5>탈퇴하시면 HOMEDICINE의 다양한 정보를 구독할 수 없게 됩니다.</h5>
			<h3>그래도 탈퇴하시겠습니까?</h3>
		</div>
		<p>
		<div>
			<h1>
				<a href="main.do">메인으로 돌아가기</a>
			</h1>
		</div>
		<p>
		<div>탈퇴하시려면 비밀번호를 재입력 해주십시오.</div>
		<div>
			<form action="realUserDelete.do" method="post">
				<input type="hidden" name="getuIdx" value="${selectUser.getuIdx()}" />
				<input type="hidden" name="getUserPW"
					value="${selectUser.getUserPW()}" /> <input type="password"
					id="userPW" name="userPW"> <input type="submit"
					id="btnDelete" value="탈퇴하기">
			</form>
		</div>
	</div>
	<%@ include file="../../../common/bottom.jsp"%>

	<!-- 회원탈퇴시 실행 -->
	<script type="text/javascript">
		$(document).ready(function() {
			// 취소
			$("#btnDelete").on("click", function() {
				if ($("#userPW").val() == "") {
					alert("비밀번호를 입력해주세요.");
					$("#userPW").focus();
					return false;
				}
			})
		})
	</script>

	<!-- 회원탈퇴시 실행 -->
</body>
</html>