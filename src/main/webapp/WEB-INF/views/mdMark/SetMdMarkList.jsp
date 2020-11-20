<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file = "../../../common/top.jsp" %>
<head>
<meta charset="EUC-KR">
<title>MDMARK</title>
</head>
<body>

	<c:forEach items="${mdMarkList}" var="mdMark">
		<tr>
			
			<td>${mdMark.uIdx}</td>
			<td>${mdMark.mdIdx}</td>
 			<td>${mdMark.mdMR}</td> 
		</tr>
	</c:forEach>
</body>
<%@ include file = "../../../common/bottom.jsp" %>
</html>