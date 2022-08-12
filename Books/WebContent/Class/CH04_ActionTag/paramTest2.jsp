<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param test 2</title>
</head>
<body>
	<h2>param test page 2</h2>
	<%
		String name = request.getParameter("name");
		String email2 = request.getParameter("email2");
	%>
	<p>
		아이디 :
		<%=request.getParameter("id")%>
	</p>
	<p>
		이름 :
		<%=java.net.URLDecoder.decode(name)%>
	</p>
	<p>
		이메일1 :
		<%=request.getParameter("email1")%>
	</p>
	<p>
		이메일2 :
		<%=java.net.URLDecoder.decode(email2)%>
	</p>
</body>
</html>