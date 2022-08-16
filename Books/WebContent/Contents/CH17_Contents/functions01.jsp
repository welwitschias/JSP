<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<p>java 문자열 검색
	<p>Hello, Java Server Pages! => ${fn:contains("Hello, Java Server Pages!", "java")}
	<p>Hello, java Server Pages! => ${fn:contains("Hello, java Server Pages!", "java")}
	<p>hello, java server pages! => ${fn:containsIgnoreCase("hello, java server pages!", "java")}
	<p>hello, JAVA server pages! => ${fn:containsIgnoreCase("hello, JAVA server pages!", "java")}
</body>
</html>