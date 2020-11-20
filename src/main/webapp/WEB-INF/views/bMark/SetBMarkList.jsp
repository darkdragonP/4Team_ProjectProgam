<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file = "../../../common/top.jsp" %>
<head>
<meta charset="EUC-KR">
<title>BMARK</title>
</head>
<body>

	<c:forEach items="${bMarkList}" var="bMark">
		<tr>
			
			<td>${bMark.bIdx}</td>
			<td>${bMark.uIdx}</td>
 			<td>${bMark.bmr}</td> 
		</tr>
	</c:forEach>
</body>
<%@ include file = "../../../common/bottom.jsp" %>
</html>