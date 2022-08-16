<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>동물 수정</title>
</head>
<body>
	<jsp:include page="menu_animal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물 수정</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp"%>
	<%
		String animalId = request.getParameter("id");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		String sql = "select * from animal where a_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, animalId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("a_fileName")%>" alt="image" style="width: 100%" />
			</div>
			<div class="col-md-7">
				<form name="newProduct" action="./processUpdateProduct_animal.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">동물 코드</label>
						<div class="col-sm-3">
							<input type="text" id="animalId" name="animalId" class="form-control" value='<%=rs.getString("a_id")%>' readonly>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">이름</label>
						<div class="col-sm-3">
							<input type="text" id="animalName" name="animalName" class="form-control" value='<%=rs.getString("a_name")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">서식지</label>
						<div class="col-sm-3">
							<input type="text" id="animalLocation" name="animalLocation" class="form-control" value='<%=rs.getString("a_location")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">나이</label>
						<div class="col-sm-3">
							<input type="text" id="animalAge" name="animalAge" class="form-control" value='<%=rs.getString("a_age")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">이미지 등록</label>
						<div class="col-sm-5">
							<input type="file" name="productImage" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<input type="submit" class="btn btn-primary" value="등록하기">
						</div>
					</div>
				</form>
			</div>
		</div>
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
</body>
</html>
