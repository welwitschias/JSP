<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>페이지 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">장준혁이 설정한 404 not found 페이지입니다.</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL()%></p>
		<p><a href="products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>		
	</div>
</body>
</html>
