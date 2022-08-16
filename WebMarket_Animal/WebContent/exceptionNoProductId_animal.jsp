<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품아이디 오류</title>
</head>
<body>
	<jsp:include page="menu_animal.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">해당 동물이 존재하지 않습니다.</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
		<p><a href="products_animal.jsp" class="btn btn-secondary">동물 목록 &raquo;</a>			
	</div>
</body>
</html>