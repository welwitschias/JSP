<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		out.println("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
		out.println("==========================<br>");
		for (int i = 0; i < cookies.length; i++) {
			out.println("설정된 쿠키의 속성 이름 [ " + i + " ] : " + cookies[i].getName() + "<br>");
			out.println("설정된 쿠키의 속성 값 [ " + i + " ] : " + cookies[i].getValue() + "<br>");
			out.println("설정된 쿠키의 속성 값 Comment [ " + i + " ] : " + cookies[i].getComment() + "<br>");
			out.println("설정된 쿠키의 속성 값 Domain [ " + i + " ] : " + cookies[i].getDomain() + "<br>");
			out.println("설정된 쿠키의 속성 값 MaxAge [ " + i + " ] : " + cookies[i].getMaxAge() + "<br>");
			out.println("설정된 쿠키의 속성 값 Path [ " + i + " ] : " + cookies[i].getPath() + "<br>");
			out.println("설정된 쿠키의 속성 값 Secure [ " + i + " ] : " + cookies[i].getSecure() + "<br>");
			out.println("설정된 쿠키의 속성 값 Version [ " + i + " ] : " + cookies[i].getVersion() + "<br>");
			out.println("---------------------------------------------<br>");
		}
	%>
</body>
</html>