<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include test</title>
</head>
<body>
	<h2>include test page</h2>
	<p>
		오늘의 날짜 및 시간 :
		<%=(new java.util.Date()).toLocaleString()%>
	</p>
</body>
</html>