<%@ page contentType="text/html; charset=utf-8"%>
<%@page import="ch18.coms.model.Person"%>
<html>
<head>
<title>MVC</title>
</head>
<body>
	<p>로그인 성공했습니다
	<p><%
		Person person = (Person) request.getAttribute("person");
		out.print("이름 : " + person.getName() + "<br>");
		out.print("toString Test : " + person.toString());
	%>
</body>
</html>