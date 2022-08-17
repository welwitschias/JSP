<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Test Page</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	/* 	String name = request.getParameter("name"); */
	String id = request.getParameter("id");
	String password = request.getParameter("pw");
	if (id.equals("관리자") && password.equals("1234")) {
		response.sendRedirect("success.jsp");
	} else {
		response.sendRedirect("fail.jsp");
	}
	%>
	<%-- 	<p>
		넘어온 이름 :
		<%=name%>
		<br> 넘어온 아이디 :
		<%=id%>
		<br> 넘어온 비밀번호 :
		<%=password%>
	</p>
	<p>
		요청 정보 길이 :
		<%=request.getContentLength()%>
		<br> 요청 정보 전송 방식 :
		<%=request.getMethod()%>
		<br> 요청 URI :
		<%=request.getRequestURI()%>
		<br> 서버 이름 :
		<%=request.getServerName()%>
		<br> 서버 포트 :
		<%=request.getServerPort()%>
	</p> --%>
</body>
</html>