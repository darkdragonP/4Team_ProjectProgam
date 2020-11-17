<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file = "../../../common/top.jsp" %>
<head>
<meta charset="EUC-KR">
<title>BOARD</title>
</head>
<body>

	<c:forEach items="${boardList}" var="board">
		<tr>	
			<td>${board.bIdx}</td>
			<td>${board.uIdx}</td>
 			<td>${board.bTitle}</td> 
 			<td>${board.bContents}</td> 
 			<td>${board.bDate}</td> 
 			<td>${board.bHits}</td> 
 			<td>${board.bRating}</td> 
 			<td>${board.bCry}</td> 
		</tr>
	</c:forEach>
</body>
<%@ include file = "../../../common/bottom.jsp" %>
</html>