<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../../../common/top.jsp"%>
<title>HOMEDICINE</title>
<!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/bootstrap/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
  <link href="../css/all.css">
  <link href="../css/style.css">

  <!-- Custom styles for this template -->
  <link href="css/landing-page.css" rel="stylesheet">
  <link href="css/landing-page.min.css" rel="stylesheet">
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<!-- Masthead -->
  <header class="mastheads text-center">
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
        </div>
            <div class="col-xl-9 mx-auto">
            <img src="images/cry.png" style="width:100px; height:100px;">
            <br><br>
            <h2>지금 탈퇴하시면<br>HOMEDICINE의 다양한 정보를 구독할 수 없게 됩니다.</h2>
            <br>
          <h1 class="mb-5">그래도 탈퇴하시겠습니까?</h1><br><br>
        
        <a href="main.do"><h1>메인으로 돌아가기</h1></a>
        <br><br><br><br>
        </div>
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
          <form action="realUserDelete.do" method="post">
            <div class="form-row">
              <div class="col-12 col-md-9 mb-2 mb-md-0">
              <input type="hidden" name="getuIdx" value="${selectUser.getuIdx()}" />
				<input type="hidden" name="getUserPW"
					value="${selectUser.getUserPW()}" />
                <input type="text" class="form-control form-control-lg" id="userPW" name="userPW" placeholder="비밀번호를 입력해주세요.">
              </div>
              <div class="col-12 col-md-3">
                <button type="submit" id="btnDelete" class="btn btn-block btn-lg btn-primary">탈퇴하기</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </header>
  <br>
  <br><br><br><br><br><br><br>


	
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