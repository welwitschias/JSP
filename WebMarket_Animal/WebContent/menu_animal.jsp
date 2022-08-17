<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class="navbar navbar-expand  navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./welcome_animal.jsp">Home</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/loginMember_animal.jsp"/>">로그인 </a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/member/addMember_animal.jsp"/>'>회원 가입</a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">[<%=sessionId%>님]
						</li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember_animal.jsp"/>">로그아웃 </a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/updateMember_animal.jsp"/>">회원 수정</a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/products_animal.jsp"/>">동물 목록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/addProduct_animal.jsp"/>">동물 등록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/editProduct_animal.jsp?edit=update"/>">동물 수정</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/editProduct_animal.jsp?edit=delete"/>">동물 삭제</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1"/>">동물 게시판</a></li>
			</ul>
		</div>
	</div>
</nav>