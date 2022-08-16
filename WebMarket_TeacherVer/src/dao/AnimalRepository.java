package dao;

import java.util.ArrayList;

import dto.Animal;

public class AnimalRepository {
	
	private ArrayList<Animal> listOfAnimals = new ArrayList<Animal>();
	private static AnimalRepository instance = new AnimalRepository();

	public static AnimalRepository getInstance(){
		return instance;
	} 

	public AnimalRepository() {//더미 데이터 3개. 폰, 태블릿, 노트북
		Animal a1 = new Animal();
		a1.setId("dog");
		a1.setName("강아지");
		a1.setAge("1");
		a1.setFilename("test1.jpg");
		a1.setLocal("부산");
		
		Animal a2 = new Animal();
		a2.setId("cat");
		a2.setName("고양이");
		a2.setAge("2");
		a2.setFilename("test2.jpg");
		a2.setLocal("서울");
		
		Animal a3 = new Animal();
		a3.setId("tiger");
		a3.setName("호랑이");
		a3.setAge("3");
		a3.setFilename("test3.jpg");
		a3.setLocal("서울");
		
		listOfAnimals.add(a1);
		listOfAnimals.add(a2);
		listOfAnimals.add(a3);
	}

	public ArrayList<Animal> getAllAnimals() {
		return listOfAnimals;
	}
	
	public Animal getAnimalById(String aId) {
		Animal aById = null;

		for (int i = 0; i < listOfAnimals.size(); i++) {
			Animal p = listOfAnimals.get(i);
			if (p != null && p.getId() != null && p.getId().equals(aId)) {
				aById = p;
				break;
			}
		}
		return aById;
	}
	
	public void addAnimal(Animal a) {
		listOfAnimals.add(a);
	}
}
