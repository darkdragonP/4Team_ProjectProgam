<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file = "../../../common/top.jsp" %>
<head>
<meta charset="EUC-KR">
<title>QnA</title>
</head>
<body>

	<c:forEach items="${SetQnAList}" var="qna">
		<tr>		
			<td>${qna.qnaIdx}</td>
			<td>${qna.uIdx}</td>
 			<td>${qna.question}</td> 
 			<td>${qna.answer}</td> 
 			<td>${qna.qDate}</td> 
 
		</tr>
	</c:forEach>
</body>
<%@ include file = "../../../common/bottom.jsp" %>
</html>