<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String name = (String) request.getAttribute("name");
%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Animal Board</title>
</head>
<script type="text/javascript">
	function checkForm() {
		if (!document.newWrite.animalId.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		if (!document.newWrite.animalName.value) {
			alert("이름을 입력하세요.");
			return false;
		}
		if (!document.newWrite.animalAge.value) {
			alert("나이를 입력하세요.");
			return false;
		}
	}
</script>
<body>
	<jsp:include page="../menu_animal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물 게시판</h1>
		</div>
	</div>
	<div class="container">
		<form name="newWrite" action="./BoardWriteAction.do" class="form-horizontal" method="post" onsubmit="return checkForm()">
			<input name="id" type="hidden" class="form-control" value="${sessionId}">
			<div class="form-group row">
				<label class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-5">
					<input name="animalId" type="text" class="form-control" placeholder="아이디를 입력하세요.">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">이름</label>
				<div class="col-sm-5">
					<input name="animalName" type="text" class="form-control" placeholder="이름을 입력하세요.">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">나이</label>
				<div class="col-sm-5">
					<input name="animalAge" type="text" class="form-control" placeholder="나이를 입력하세요.">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
					<input type="reset" class="btn btn-primary" value="취소">
				</div>
			</div>
		</form>
		<hr>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>