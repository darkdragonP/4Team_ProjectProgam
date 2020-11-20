<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file = "../../../common/top.jsp" %>
<head>
<meta charset="EUC-KR">
<title>MDREPLY</title>
</head>
<body>

	<c:forEach items="${mdReplyList}" var="mdReply">
		<tr>
			
			<td>${mdReply.uReIdx}</td>
			<td>${mdReply.uIdx}</td>
 			<td>${mdReply.mdIdx}</td> 
 			<td>${mdReply.uReContent}</td> 
 			<td>${mdReply.uReDate}</td> 
		</tr>
	</c:forEach>
</body>
<%@ include file = "../../../common/bottom.jsp" %>
</html>