<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>동물 등록</title>
</head>
<body>
	<jsp:include page="menu_animal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물 등록</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">

			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">Logout</a>
		</div>
		<form name="newAnimal" action="./processAddProduct_animal.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" id="animalId" name="animalId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이름</label>
				<div class="col-sm-3">
					<input type="text" id="animalName" name="animalName" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">서식지</label>
				<div class="col-sm-3">
					<input type="text" id="animalLocation" name="animalLocation" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">나이</label>
				<div class="col-sm-3">
					<input type="text" id="animalAge" name="animalAge" class="form-control">
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
</body>
</html>
