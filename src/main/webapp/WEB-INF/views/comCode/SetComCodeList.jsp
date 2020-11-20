<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file = "../../../common/top.jsp" %>
<head>
<meta charset="EUC-KR">
<title>COMCODE</title>
</head>
<body>

	<c:forEach items="${comCodeList}" var="Code">
		<tr>
			
			<td>${Code.commTyCd}</td>
			<td>${Code.commCd}</td>
 			<td>${Code.commCdNm}</td> 
		</tr>
	</c:forEach>
</body>
<%@ include file = "../../../common/bottom.jsp" %>
</html>