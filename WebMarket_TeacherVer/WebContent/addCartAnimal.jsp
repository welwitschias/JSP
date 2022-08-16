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
		response.sendRedirect("exceptionNoProductId.jsp");
	}

	ArrayList<Animal> animalsList = dao.getAllAnimals();
	Animal animals = new Animal();
	for (int i = 0; i < animalsList.size(); i++) {
		animals = animalsList.get(i);
		if (animals.getId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Animal> list = (ArrayList<Animal>) session.getAttribute("animallist");
	if (list == null) { 
		list = new ArrayList<Animal>();
		session.setAttribute("animallist", list);
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
		animals.setQuantity(1);
		list.add(animals);
	}

	response.sendRedirect("product_animal.jsp?id=" + id);
%>