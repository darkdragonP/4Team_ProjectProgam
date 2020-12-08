<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="common/top.jsp"%>
<head>
<title>HOMEDICINE</title>

 			<!-- video 속성값 설정 --> <!-- Text 속성값 설정 --> <!-- button 속성값 설정 -->
 <style> 
	video#bgvid {
	position: fixed; right: 0; bottom: 0;
	min-width: 100%; min-height: 100%;
	width: auto; height: auto; z-index: -100;
	background-size: cover;
	position: relative;
	}
			
	.jb-text { position: absolute; top: 10%; width: 100%; }
    .jb-text p { margin-top: -24px; text-align: center; font-size: 30px; color: rgba(0,0,0,0.15); }
    .jb-text h1 { margin-top: -24px; text-align: center; font-size: 78px; color: #f8f9fa; }
    .jb-text h2 { margin-top: -24px; text-align: center; font-size: 45px; color: #f8f9fa; }
    	
    button{
  background:#ef746f;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
   button:hover{
  background:#fff;
  color:#ef746f;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #ef746f;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}

button:hover:before,button:hover:after
{
  width:100%;
  transition:800ms ease all;
}
  </style>
</head>
<body>
	<!-- 배경화면  지정-->
	<video muted autoplay loop>
        <source src="videos/video.mp4" type="video/mp4">
     </video>
     
    <!-- Text 지정 -->  
 	<div class="jb-text">
 	<br><br><br>
        <h1>HOMEDICINE</h1>

        
		<!-- Categories Widget -->
    	<div class="col-md-2 blog-right-side">
		
		<!-- <img src="images/googleVision.jpg" alt="OCR"
			style="width: 15%; height: 15%;" /> -->
		<h2><strong>OCR 기능 이용하기</strong></h2>
		<button>사진 검색하기　</button>
		<button>처방전 등록하기</button>
	   <!-- <button class="btn btn-secondary" type="button">사진으로 검색하기 ▶</button> -->
	   <!-- <button class="btn btn-secondary" type="button">처방전 등록하기 ▶</button> -->
		</div>
    </div>


</body>
<%@ include file="common/bottom.jsp"%>
</html>