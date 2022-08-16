<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>동물 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물 정보</h1>
		</div>
	</div>
	<%
	//웹 브라우저에서 URI 뒤에 주소 ? 뒤에 ID  속성 값을 가져왔음. 
	//예를 들면, 상품 목록에서 , 상품의 개체를 하나 선택 시, 해당 상품의 아이디입니다.
	// ex) P1234
	String id = request.getParameter("id");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from animal where id = ? ";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	rs = pstmt.executeQuery();
	while (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<%-- <img src="./resources/images/<%=rs.getString("filename")%>" style="width: 100%" /> --%>
				<img src="./resources/images/<%=rs.getString("filename")%>" width= 100px height= 100px >
			</div>
			<div class="col-md-6">
				<h3><%=rs.getString("name")%></h3>
				<p><%=rs.getString("id")%>
				<p><b>아이디 : </b><span class="badge badge-danger"> <%=rs.getString("id")%></span>
				<p><b>나이</b> : <%=rs.getString("age")%>
				<p><b>사는곳</b> : <%=rs.getString("local")%>				
				<p><form name="addForm" action="./addCartAnimal.jsp?id=<%=rs.getString("id")%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()">더미 상품 주문 &raquo;</a>
					<a href="./cartAnimal.jsp?id=animalCartId" class="btn btn-warning">더미 장바구니 &raquo;</a> 
					<a href="./products_animal.jsp" class="btn btn-secondary"> 동물 목록 &raquo;</a> 
				</form>
			</div>
		</div>
		<hr>
	</div>
	<%} %>
	<jsp:include page="footer.jsp" />
</body>
</html>
