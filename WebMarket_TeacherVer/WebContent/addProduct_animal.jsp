<%@ page contentType="text/html; charset=utf-8"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>동물 등록</title>
</head>
<body>
	<%-- <fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" > --%>
	<jsp:include page="menu.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<!-- <h1 class="display-3"><fmt:message key="title" /></h1> -->
			<h1 class="display-3">동물 등록</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right"> 
		<!-- 	<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a> -->
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>	
		<form name="newAnimal" action="./processAddanimal.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">ID(아이디)</label>
				<div class="col-sm-3">
					<input type="text" id="animalId"  name="animalId"  class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">NAME(이름)</label>
				<div class="col-sm-3">
					<input type="text" id="name"  name="name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">AGE(나이)</label>
				<div class="col-sm-3">
					<input type="text" id="age"  name="age" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">LOCAL(지역)</label>
				<div class="col-sm-5">
					<input type="text" id="local"  name="local" class="form-control" >
				</div>
			</div>
				
			<!-- 과제로 할 예정. -->
			<!-- <div class="form-group row">
				<label class="col-sm-2"><fmt:message key="condition" /></label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New " ><fmt:message key="condition_New"/> 
					<input type="radio" name="condition" value="Old" ><fmt:message key="condition_Old" />
					<input type="radio" name="condition" value="Refurbished" ><fmt:message key="condition_Refurbished" />
				</div>
			</div> -->
			<div class="form-group row">
				<label class="col-sm-2">첨부 파일</label>
				<div class="col-sm-5">
					<input type="file" name="animalImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="동물등록" >
				</div>
			</div>
		</form>
	</div>
</body>
</html>
