<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Animal"%>
<%@ page import="dao.AnimalRepository"%>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("products_animal.jsp");
		return;
	}

	AnimalRepository dao = AnimalRepository.getInstance();
	
	Animal animal = dao.getAnimalById(id);
	if (animal == null) {
		response.sendRedirect("exceptionNoProductId_animal.jsp");
	}

	ArrayList<Animal> cartList = (ArrayList<Animal>) session.getAttribute("cartlist");
	Animal goodsQnt = new Animal();
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("cart_animal.jsp");
%>
