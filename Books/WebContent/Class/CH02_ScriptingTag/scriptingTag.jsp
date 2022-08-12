<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<h2>Scripting Tag</h2>

	<%-- 선언문(declaration) : <%! ... %> → 변수나 메소드 정의(선언) --%>
	<%!
		int count = 3;
		String name = "홍길동";
		String address = "부산광역시";
	
		String makeItLower(String data) {
			return data.toLowerCase();
		}
	
		String makeItUpper(String data) {
			return data.toUpperCase();
		}
	
		int sum(int a, int b) {
			return a + b;
		}
	%>

	<%-- 스크립틀릿(scriptlet) : <% ... %> → 로직 코드(반복문, 조건문 등) 작성 --%>
	<p>
		<%
			for (int i = 1; i <= count; i++) {
				out.println("Test: " + i + "<br>");
			}
		%>
	</p>
	<p>
		<%
			for (int j = 1; j <= count; j++) {
				out.println(j + "번째 문장입니다." + "<br>");
			}
		%>
	</p>
	<p>
		<%
			for (int k = 0; k <= 10; k++) {
				if (k % 2 == 0) {
					out.println(k + "<br>");
				}
			}
		%>
	</p>

	<%-- 표현문(expression) : <%= ... %> → 변수나 메소드 등의 호출 결과를 출력 --%>
	<p><%=makeItLower("HELLO WORLD")%></p>
	<p><%=makeItUpper("hello world")%></p>

	<!-- 스크립틀릿과 표현문 사용 비교 -->
	<h3>전역 메소드 사용해보기</h3>
	<p><%=count%></p>
	<p>
		<%
			out.println(count);
		%>
	</p>
	<p><%=sum(100, 200)%></p>
	<p>
		<%
			out.println(sum(100, 200));
		%>
	</p>
	<p><%=name%></p>
	<p>
		<%
			out.println(name);
		%>
	</p>
	<p><%=address%></p>
	<p>
		<%
			out.println(address);
		%>
	</p>

	<h3>날짜 클래스 사용해보기</h3>
	<p><%=new java.util.Date()%></p>
</body>
</html>