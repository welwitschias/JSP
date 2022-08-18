<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="mvc.model.BoardDTO"%>
<%
	BoardDTO notice = (BoardDTO) request.getAttribute("board");
	int num = ((Integer) request.getAttribute("num")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Animal Board</title>
</head>
<body>
	<jsp:include page="../menu_animal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물 게시판</h1>
		</div>
	</div>

	<div class="container">
		<form name="newUpdate" action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-5">
					<input name="animalId" class="form-control" value="<%=notice.getId()%>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">이름</label>
				<div class="col-sm-5">
					<input name="animalName" class="form-control" value="<%=notice.getName()%>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">나이</label>
				<div class="col-sm-5">
					<input name="animalAge" class="form-control" value="<%=notice.getAge()%>">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
						<p>
							<a href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>" class="btn btn-danger">삭제</a>
							<input type="submit" class="btn btn-success" value="수정">
					<a href="./BoardListAction.do?pageNum=<%=nowpage%>" class="btn btn-primary">목록</a>
				</div>
			</div>
		</form>
		<hr>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>