<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>동물 편집</title>
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("동물을 삭제합니다!!") == true)
			location.href = "./deleteProduct_animal.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
<%
	String edit = request.getParameter("edit");
%>
</head>
<body>
	<jsp:include page="menu_animal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물 편집</h1>
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
				<img src="./resources/images/<%=rs.getString("a_fileName")%>" style="width: 100%">
				<h3><%=rs.getString("a_name")%></h3>
				<p>서식지 : <%=rs.getString("a_location")%>
				<p>나이 : <%=rs.getString("a_age")%>살
				<p>
					<%
						if (edit.equals("update")) {
					%>
					<a href="./updateProduct_animal.jsp?id=<%=rs.getString("a_id")%>" class="btn btn-success" role="button"> 수정 &raquo;></a>
					<%
						} else if (edit.equals("delete")) {
					%>
					<a href="#" onclick="deleteConfirm('<%=rs.getString("a_id")%>')" class="btn btn-danger" role="button">삭제 &raquo;></a>
					<%
						}
					%>
				
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