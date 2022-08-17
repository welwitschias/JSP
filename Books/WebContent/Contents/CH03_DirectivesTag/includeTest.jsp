<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Test</title>
</head>
<body>
	<%!
		int count = 0;
	
		void addCount() {
			count++;
		}
	%>
	<%
		addCount();
	%>
	<h2>
		방문자수 :
		<%=count%></h2>
	<%-- 	<h2>
		방문자수 :
		<%
		out.println(count);
	%>
	</h2> --%>
</body>
</html>