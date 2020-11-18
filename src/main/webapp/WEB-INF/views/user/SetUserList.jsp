<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file = "../../../common/top.jsp" %>
<head>
<meta charset="EUC-KR">
<title>USER</title>
</head>
<body>

	<c:forEach items="${userList}" var="user">
		<tr>
			
			<td>${user.userID}</td>
			<td>${user.userPW}</td>
 			<td>${user.uEmail}</td> 
 			<td>${user.uName}</td> 
 			<td>${user.uBirth}</td> 
 			<td>${user.uPostNum}</td> 
 			<td>${user.uPhCD}</td> 
 			<td>${user.uPhNum}</td> 
 			<td>${user.uProfile}</td> 
 			<td>${user.address}</td> 
 			<td>${user.uDate}</td> 
 			<td>${user.uMailCon}</td> 
 			<td>${user.uGrade}</td> 
 			<td>${user.ocrPay}</td> 
		</tr>
	</c:forEach>
</body>
<%@ include file = "../../../common/bottom.jsp" %>
</html>