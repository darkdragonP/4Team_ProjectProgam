<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 완료</title>
</head>
<body>
처리좀 되라 ㅋㅋㅋㅋ

<input type="hidden" name="naverid" id="naverid" placeholder="<%=session.getAttribute("naverid") %>" value="<%=session.getAttribute("naverid") %>">
<input type="hidden" name="naverpw" id="naverpw" placeholder="<%=session.getAttribute("naverpw") %>">
<input type="hidden" name="navername" id="navername" placeholder="<%=session.getAttribute("navername") %>">
<input type="hidden" name="naveremail" id="naveremail" placeholder="<%=session.getAttribute("naveremail") %>">


	<!-- 아이디 중복체크 -->
	<script>
	function checkId() {
		var idCheck = document.getElementById("userID").value;
        console.log(idCheck);
        $.ajax({
            data : {
            	"naverid" : idCheck
            },
            url : "idoverlap.do",
            dataType : "text",
            success : function(data) {
                if(data == "OK") {
                	window.location.href = "/main.do";
                } else {
                	window.location.href = "/register.do";
                } 
            },
            error : function() {//실패시
				alert("idOverlap함수 통신 실패");
			}
        });
    }
	</script>
</body>
</html>