<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Animal"%>
<%@ page import="dao.AnimalRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
	String cartId = session.getId();
%>
<title>장바구니</title>
</head>
<body>
	<jsp:include page="menu_animal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteCart_animal.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="./shippingInfo_animal.jsp?cartId=<%= cartId %>" class="btn btn-success">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>나이</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%				
					int sum = 0;
					ArrayList<Animal> cartList = (ArrayList<Animal>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Animal>();

					for (int i = 0; i < cartList.size(); i++) {
						Animal animal = cartList.get(i);
						int total = animal.getAge() * animal.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td><%=animal.getId()%> - <%=animal.getName()%></td>
					<td><%=animal.getAge()%></td>
					<td><%=animal.getQuantity()%></td>
					<td><%=total%></td>
					<td><a href="./removeCart_animal.jsp?id=<%=animal.getId()%>" class="badge badge-danger">삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum%></th>
					<th></th>
				</tr>
			</table>
			<a href="./products_animal.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
