<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<%--	<h2>==============================</h2>
 	<h2>forward Start</h2>
	<jsp:forward page="forwardTest.jsp" />
	<h2>forward End</h2> --%>

	<%-- 	<h2>==============================</h2>
 	<h2>include Start</h2>
	<jsp:include page="includeTest.jsp" />
	<h2>include End</h2> --%>

	<!-- 	param = parameter(매개변수) -->
	<%--	<h2>==============================</h2>
 	<h2>param1 Start</h2>
	<jsp:include page="paramTest1.jsp">
		<jsp:param name="date1"
			value="<%=(new java.util.Date()).toLocaleString()%>" />
	</jsp:include>
	<h2>param1 End</h2> --%>

	<%--	<h2>==============================</h2>
 	<h2>param2 Start</h2>
	<jsp:forward page="paramTest2.jsp">
		<jsp:param name="id" value="admin" />
		<jsp:param name="name" value='<%=java.net.URLEncoder.encode("홍길동")%>' />
		<jsp:param name="email1" value="apple@naver.com" />
		<jsp:param name="email2"
			value='<%=java.net.URLEncoder.encode("banana@daum.net")%>' />
	</jsp:forward>
	<h2>param2 End</h2> --%>

	<%-- 	<h2>==============================</h2>
	<h2>param3 Start</h2>
	<jsp:include page="paramTest3.jsp">
		<jsp:param name="date2"
			value="<%=java.util.Calendar.getInstance().getTime()%>" />
	</jsp:include>
	<h2>param3 End</h2> --%>

	<h2>==============================</h2>
	<h2>useBean1 Start</h2>
	<jsp:useBean id="date" class="java.util.Date" />
	<p><%=date%></p>
	<h2>useBean1 End</h2>

	<h2>==============================</h2>
	<h2>useBean2 Start</h2>
	<jsp:useBean id="calc" class="ch04.com.dao.Calculator" />
	<p><%=calc.process(5)%></p>
	<%
		int result1 = calc.process(5);
	%>
	<p><%=result1%></p>
	<p><%=calc.pow(10)%></p>
	<%
		int result2 = calc.pow(10);
	%>
	<p><%=result2%></p>
	<h2>useBean2 End</h2>

	<h2>==============================</h2>
	<h2>useBean3 Start</h2>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<%
		person.setId("EBS-3285");
		person.setName("펭수");
		person.setEmail("peng@gmail.com");
	%>
	<p>
		아이디 :
		<%=person.getId()%>
	</p>
	<p>
		이름 :
		<%=person.getName()%>
	</p>
	<p>
		이메일 :
		<%=person.getEmail()%>
	</p>
	<h2>useBean3 End</h2>

	<h2>==============================</h2>
	<h2>useBean4 Start</h2>
	<jsp:useBean id="animal" class="ch04.com.dao.Animal" scope="request" />
	<%
		animal.setName("냐옹이");
		animal.setLocation("포켓몬 마을");
		animal.setAge(6);
	%>
	<p>
		이름 :
		<%=animal.getName()%>
	</p>
	<p>
		사는 곳 :
		<%=animal.getLocation()%>
	</p>
	<p>
		나이 :
		<%=animal.getAge()%>
	</p>
	<h2>useBean4 End</h2>

	<h2>==============================</h2>
	<h2>set/getProperty Start</h2>
	<jsp:useBean id="per" class="ch04.com.dao.Person" scope="request" />
	<%
		per.setId("EBS-3285");
		per.setName("펭수");
		per.setEmail("peng@gmail.com");
	%>
	<jsp:setProperty name="per" property="id" value="kim" />
	<jsp:setProperty name="per" property="name" value="철수" />
	<jsp:setProperty name="per" property="email" value="chulsoo@naver.com" />
	<p>
		아이디 :
		<jsp:getProperty name="per" property="id" />
	</p>
	<p>
		이름 :
		<jsp:getProperty name="per" property="name" />
	</p>
	<p>
		이메일 :
		<jsp:getProperty name="per" property="email" />
	</p>
	<h2>set/getProperty End</h2>
</body>
</html>