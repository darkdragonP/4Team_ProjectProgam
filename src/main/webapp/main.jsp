<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<%@ include file="common/top.jsp"%>
<head>
<title>HOMEDICINE</title>
<!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <!-- Custom fonts for this template -->
  <link href="vendor/bootstrap/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
  <link href="css/all.css"  rel="stylesheet">
  <link href="css/style.css"  rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/landing-page.css" rel="stylesheet">
  <link href="css/landing-page.min.css" rel="stylesheet">
  
</head>
<body>

	<!-- Masthead -->
  <header class="masthead text-white text-center">
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <h1 class="mb-5">HOMEDICINE에서 <br>53,000여개의 약 데이터를 만나보세요!</h1>
        </div>
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
          <form>
            <div class="form-row">
              <div class="col-12 col-md-9 mb-2 mb-md-0">
                <input type="text" class="form-control form-control-lg" placeholder="약 이름을 검색해주세요.">
              </div>
              <div class="col-12 col-md-3">
                <button type="submit" class="btn btn-block btn-lg btn-primary">검색</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </header>

  <!-- Icons Grid -->
  <section class="features-icons bg-light text-center">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
            <div class="center">
              <a href="medicineList.do"><img src="images/medicines.png" style="width:100px; height:100px;"></a>
            </div>
            <br>
            <h3>약 게시판 바로가기</h3>
            <p class="lead mb-0">약 이름, 모양으로 검색해보세요.</p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
            <div class="center">
              <a href="#"><img src="images/mobile-payment.svg" style="width:100px; height:100px;"></a>
              <!-- 결제페이지로 이동 링크 삽입 -->
            </div>
            <br>
             <h3>유료회원 결제하기</h3>
            <p class="lead mb-0">결제 후 처방전등록, 약사진검색 등 더 많은 서비스를 만날 수 있습니다. </p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-0 mb-lg-3">
             <div class="center">
              <a href="Contact.do"><img src="images/pharmacy.png" style="width:100px; height:100px;"></a>
            </div>
            <br>
            <h3>주변 약국 검색하기</h3>
            <p class="lead mb-0">내 주변 약국을 찾아드립니다.</p>
          </div>
        </div>
      </div>
    </div>
    <br>

  </section>
  

  


<%@ include file="common/bottom.jsp"%>
</body>
</html>