<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<!--  전체 사이트 태그 (gtag.js)-Google 애널리틱스-->
<script async src = "https://www.googletagmanager.com/gtag/js?id=G-YSHQXC2BQD"> </script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag () {dataLayer.push (arguments);}
  gtag ( 'js', new Date ());
  
  gtag ( 'config', 'G-YSHQXC2BQD');
</script>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>HOMEDICINE</title>

<!-- favicon.ico 적용  -->
<c:set var="path" value="${pageContext.request.contextPath}/"/>
<link rel="shortcut icon" href="${path}images/favicon.ico">



<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Fontawesome CSS -->
<link href="css/all.css?after" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css?after" rel="stylesheet">


</head>
<body>
	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-light top-nav fixed-top">
		<a href="index.html"><span style="float: left;"><img
				src="images/HOMEDICINE8.jpg" alt="logo" /></span></a>
		
			<a class="navbar-brand" href="index.html"> </a>
			<b class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="fas fa-bars"></span>
			</b>
			
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">

						<li class="nav-item"><a class="nav-link" href="main.jsp">home</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="medicineList.do">medicine</a></li>
						<li class="nav-item"><a class="nav-link" href="boardList.do">board</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="qnaList.do">QnA</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="Contact.do">Search</a>
						</li>
						<c:if test="${uIdx == null}">
							<li class="nav-item"><a class="nav-link" href="login.do">login</a>
							</li>
						</c:if>
						<c:if test="${uIdx != null}">
						<c:if test="${userID != 'admin'}">
							<li class="nav-item"><a class="nav-link" href="UserMainPay.do">user page</a></li>
							</c:if>
							<c:if test="${userID == 'admin'}">
								<li class="nav-item"><a class="nav-link" href="adminMain.do">admin page</a></li>
							</c:if>
						<!-- 로그아웃 버튼생성, 회원정보 수정까지 로그인하면 보이게 함-->
								<li class="nav-item"><a class="nav-link" href="logout.do">logout</a>
						</c:if>
					</ul>
				</div>
			
	</nav>
</body>
</html>