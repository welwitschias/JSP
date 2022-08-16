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

	ArrayList<Animal> goodsList = dao.getAllAnimals();
	Animal goods = new Animal();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Animal> list = (ArrayList<Animal>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Animal>();
		session.setAttribute("cartlist", list);
	}

	int cnt = 0;
	Animal goodsQnt = new Animal();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("product_animal.jsp?id=" + id);
%>