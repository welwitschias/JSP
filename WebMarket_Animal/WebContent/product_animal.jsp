<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>동물 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("동물을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu_animal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물 상세 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from animal where a_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	while (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("a_fileName")%>" width=100%, height=100% />
			</div>
			<div class="col-md-6">
				<h3><%=rs.getString("a_name")%></h3>
				<p>
					<b>동물 코드 : </b><span class="badge badge-danger"> <%=rs.getString("a_id")%></span>
				<p>
					<b>서식지 : </b>
					<%=rs.getString("a_location")%>
				<p>
				<form name="addForm" action="./addCart_animal.jsp?id=<%=rs.getString("a_id")%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()"> 동물 주문 &raquo;</a>
					<a href="./cart_animal.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
					<a href="./products_animal.jsp" class="btn btn-secondary"> 동물 목록 &raquo;</a>
				</form>
			</div>
		</div>
		<hr>
	</div>
	<%
		}
	%>
	<jsp:include page="footer.jsp" />
</body>
</html>
