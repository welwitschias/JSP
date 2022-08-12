<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param test 3</title>
</head>
<body>
	<h2>param test page 3</h2>
	<p>
		오늘의 날짜 및 시간 :
		<%=request.getParameter("date2")%>
	</p>
</body>
</html>