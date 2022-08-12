<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%-- <%@ page 속성1="값1" 속성2="값2" ... %> : 페이지에 대한 정보 설정 --%>
<%-- <%@ page errorPage="errorPage.jsp"%>
<%@ page errorPage="isErrorPage.jsp"%>
<%@ page isELIgnored="true"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<h1>text/html Test Page</h1>

	<!-- import -->
	<h2>==============================</h2>
	<h2>
		오늘 날짜 :
		<%=new Date()%></h2>

	<!-- errorPage -->
	<%-- 	<%
		String str = null;
		out.println(str.toString());
	%> --%>

	<!-- EL 표기법 : \${} -->
	<h2>==============================</h2>
	<h2>EL 표기법에 대해서 간단히 알아보기</h2>
	<%
		request.setAttribute("key", "실제 값(value)");
	%>
	<h3>${requestScope.key}</h3>

	<!-- 외부 파일의 내용 추가하기 -->
	<h2>==============================</h2>
	<h2>includeTest 파일의 내용을 추가해보자</h2>
	<%@ include file="includeTest.jsp"%>

	<!-- taglib(taglibrary) -->
	<h2>==============================</h2>
	<h2>JSP에서 JSTL 사용자 정의 태그 : taglib 지시어를 통해서 c(core) 사용해보기</h2>
	<p>
		<c:out value="출력 용도로 사용함." />
	</p>
	<p>
		<c:forEach var="k" begin="1" end="10" step="2">
			<c:out value="${k}" />
			<br>
		</c:forEach>
	</p>
</body>
</html>