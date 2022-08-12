<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object</title>
</head>
<body>
	<!-- 	<form action="requestTest.jsp" method="post">
		<p>
			이름 :
			<input type="text" name="name">
			<br> 아이디 :
			<input type="text" name="id">
			<br> 비밀번호 :
			<input type="password" name="pw">
			<br>
			<input type="submit" name="전송">
		</p>
	</form> -->

	<%-- 	<h2>==============================</h2>
	<h2>HTTP Header 일부 정보 출력하기</h2>
	<%
		String hostValue = request.getHeader("host");
	String alValue = request.getHeader("accept-language");
	%>
	<p>
		호스트명 :
		<%=hostValue%>
		<br> 설정된 언어 :
		<%=alValue%>
	</p>

	<h2>==============================</h2>
	<h2>HTTP Header 모든 정보 출력하기</h2>
	<%
		Enumeration en = request.getHeaderNames();
	while (en.hasMoreElements()) {
		String headerName = (String) en.nextElement();
		String headerValue = request.getHeader(headerName);
	%>
	<strong>Name :</strong>
	<%=headerName%>,
	<strong>Value :</strong>
	<%=headerValue%><br>
	<%
		}
	%> --%>

	<%-- 	<h2>==============================</h2>
	<h2>페이지 이동하기</h2>
	<%
		response.sendRedirect("https://www.google.co.kr/");
	%> --%>

	<%-- 	<h2>==============================</h2>
	<%
		response.setHeader("Cache-control", "use_cache_jjh");
	response.addHeader("contentType", "text/html; charset=utf-8");
	response.setDateHeader("date", 1L);
	%>
	Cache-control :
	<%=response.getHeader("Cache-control")%>
	<br> contentType :
	<%=response.getHeader("contentType")%>
	<br> date :
	<%=response.getHeader("date")%> --%>

	<%-- 	<h2>==============================</h2>
	<h3>이 페이지는 3초마다 새로고침 됩니다.</h3>
	<%
		response.setIntHeader("Refresh", 3);
	%>
	<%=new java.util.Date()%> --%>

	<%-- 	<h2>==============================</h2>
	<%
		response.sendError(404, "요청 페이지를 찾을 수 없습니다.");
	%> --%>
</body>
</html>