<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file = "../../../common/top.jsp" %>
<head>
<meta charset="EUC-KR">
<title>UPDPAGE</title>
</head>
<body>

	<c:forEach items="${updList}" var="upd">
		<tr>
			
			<td>${upd.uIdx}</td>
			<td>${upd.ocrIdx}</td>
 			<td>${upd.ocrSearchDate}</td> 
 			<td>${upd.mdName}</td> 
 			<td>${upd.mdContent}</td> 
 			<td>${upd.mdPP_Date}</td> 
		</tr>
	</c:forEach>
</body>
<%@ include file = "../../../common/bottom.jsp" %>
</html>