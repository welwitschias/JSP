<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Animal"%>
<jsp:useBean id="animalDAO" class="dao.AnimalRepository" scope="session" />
<%@ include file="dbconn.jsp"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>동물 목록</title>
</head>
<body>
	<jsp:include page="menu_animal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물 목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
	
				String sql = "select * from animal";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-4">
				<img src="./resources/images/<%=rs.getString("a_fileName")%>" width=100%, height=70%>
				<h3><%=rs.getString("a_name")%></h3>
				<p>서식지 : <%=rs.getString("a_location")%>
				<p>나이 : <%=rs.getString("a_age")%>살
				<p>
					<a href="./product_animal.jsp?id=<%=rs.getString("a_id")%>" class="btn btn-secondary" role="button">상세 정보 &raquo;></a>
			</div>
			<%
				}
				if (rs != null)
				rs.close();
				if (pstmt != null)
				pstmt.close();
				if (conn != null)
				conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
