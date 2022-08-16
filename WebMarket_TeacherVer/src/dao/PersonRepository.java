package dao;

import java.util.ArrayList;

import dto.Person;

public class PersonRepository {
	
	private ArrayList<Person> listOfProducts = new ArrayList<Person>();
	private static PersonRepository instance = new PersonRepository();

	public static PersonRepository getInstance(){
		return instance;
	} 

	public PersonRepository() {//더미 데이터 3개. 폰, 태블릿, 노트북
		Person p1 = new Person();
		p1.setId("lsy1");
		p1.setName("이상용1");
		p1.setEmail("lsy1@naver.com");
		
		Person p2 = new Person();
		p2.setId("lsy2");
		p2.setName("이상용2");
		p2.setEmail("lsy2@naver.com");
		
		Person p3 = new Person();
		p3.setId("lsy3");
		p3.setName("이상용3");
		p3.setEmail("lsy3@naver.com");
		
		

		listOfProducts.add(p1);
		listOfProducts.add(p2);
		listOfProducts.add(p3);
	}

	public ArrayList<Person> getAllProducts() {
		return listOfProducts;
	}
	
	public Person getProductById(String pId) {
		Person pById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Person p = listOfProducts.get(i);
			if (p != null && p.getId() != null && p.getId().equals(pId)) {
				pById = p;
				break;
			}
		}
		return pById;
	}
	
	public void addPerson(Person p) {
		listOfProducts.add(p);
	}
}
