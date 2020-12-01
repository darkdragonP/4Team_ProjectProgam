<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>HOMEDICINE</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Fontawesome CSS -->
<link href="css/all.css?after" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css?after" rel="stylesheet">

<!-- navbar 호버이펙트 -->
<style>
div.container {
	margin: 0 auto;
	padding: 0em 0em;
}

div.container a {
	color: #007bff;
	text-decoration: none;
	font: 14px Raleway;
	position: relative;
	z-index: 0;
	cursor: pointer;
}

.teal {
	background: #f2efea;
}

/* Border from Y to X  */
div.borderYtoX a:before, div.borderYtoX a:after {
	position: absolute;
	opacity: 0.5;
	height: 100%;
	width: 2px;
	content: '';
	background: #f2efea;
	transition: all 0.3s;
}

div.borderYtoX a:before {
	left: 0px;
	top: 0px;
}

div.borderYtoX a:after {
	right: 0px;
	bottom: 0px;
}

div.borderYtoX a:hover:before, div.borderYtoX a:hover:after {
	opacity: 1;
	height: 2px;
	width: 100%;
}

/* Border X get width  */
div.borderXwidth a:before, div.borderXwidth a:after {
	position: absolute;
	opacity: 0;
	width: 0%;
	height: 2px;
	content: '';
	background: #FFF;
	transition: all 0.3s;
}

div.borderXwidth a:before {
	left: 0px;
	top: 0px;
}

div.borderXwidth a:after {
	right: 0px;
	bottom: 0px;
}

div.borderXwidth a:hover:before, div.borderXwidth a:hover:after {
	opacity: 1;
	width: 100%;
}

div.topLeftBorders a:hover:before {
	height: 100%;
}

div.topLeftBorders a:hover:after {
	opacity: 0;
	top: 100%;
}
</style>
<!-- navbar 호버이펙트 끝 -->

</head>
<body>
	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-light top-nav fixed-top">
		<a href="index.html"><span style="float: left;"><img
				src="images/HOMEDICINE8.jpg" alt="logo" /></span></a>
		<div class="container">
			<a class="navbar-brand" href="index.html"> </a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="fas fa-bars"></span>
			</button>
			<div class="teal borderYtoX">
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
							<li class="nav-item"><a class="nav-link" href="UserMain.do">user page</a></li>
							</c:if>
							<c:if test="${userID == 'admin'}">
								<li class="nav-item"><a class="nav-link" href="adminMain.do">admin page</a></li>
							</c:if>
						<!-- 로그아웃 버튼생성, 회원정보 수정까지 로그인하면 보이게 함-->
								<li class="nav-item"><a class="nav-link" href="logout.do">logout</a>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</nav>
</body>
</html>