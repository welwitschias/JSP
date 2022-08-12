package dao;

import java.util.ArrayList;

import dto.Person;

public class PersonRepository {

	private ArrayList<Person> listOfPersons = new ArrayList<Person>();
	private static PersonRepository instance = new PersonRepository();

	public static PersonRepository getInstance() {
		return instance;
	}

	public PersonRepository() {
		Person p1 = new Person();
		p1.setId("No1");
		p1.setName("짱구");
		p1.setEmail("goo@gmail.com");

		Person p2 = new Person();
		p2.setId("No2");
		p2.setName("유리");
		p2.setEmail("yuri@gmail.com");

		Person p3 = new Person();
		p3.setId("No3");
		p3.setName("철수");
		p3.setEmail("soo@gmail.com");

		listOfPersons.add(p1);
		listOfPersons.add(p2);
		listOfPersons.add(p3);
	}

	public ArrayList<Person> getAllPersons() {
		return listOfPersons;
	}

	public Person getPersonById(String perId) {
		Person pById = null;

		for (int i = 0; i < listOfPersons.size(); i++) {
			Person p = listOfPersons.get(i);
			if (p != null && p.getId() != null && p.getName().equals(perId)) {
				pById = p;
				break;
			}
		}
		return pById;
	}

	public void addPerson(Person person) {
		listOfPersons.add(person);
	}
}
