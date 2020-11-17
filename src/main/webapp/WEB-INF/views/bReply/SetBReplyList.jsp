<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file = "../../../common/top.jsp" %>
<head>
<meta charset="EUC-KR">
<title>BREPLY</title>
</head>
<body>

	<c:forEach items="${bReplyList}" var="bReply">
		<tr>
			
			<td>${bReply.uReIdx}</td>
			<td>${bReply.BIdx}</td>
 			<td>${bReply.uIdx}</td> 
 			<td>${bReply.uReContent}</td> 
 			<td>${bReply.uReDate}</td> 
		</tr>
	</c:forEach>
</body>
<%@ include file = "../../../common/bottom.jsp" %>
</html>