<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Animal"%>
<%@ page import="dao.AnimalRepository"%>
<%
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("cart_animal.jsp");
		return;
	}

	session.invalidate();
	response.sendRedirect("cart_animal.jsp");
%>
