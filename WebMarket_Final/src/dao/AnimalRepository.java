package dao;

import java.util.ArrayList;

import dto.Animal;

public class AnimalRepository {

	private ArrayList<Animal> listOfAnimals = new ArrayList<Animal>();
	private static AnimalRepository instance = new AnimalRepository();

	public static AnimalRepository getInstance() {
		return instance;
	}

	public AnimalRepository() {
		Animal a1 = new Animal();
		a1.setId("A0001");
		a1.setName("호랑이");
		a1.setLocation("시베리아");
		a1.setAge(6);
		a1.setFilename("tiger.jpg");

		Animal a2 = new Animal();
		a2.setId("A0002");
		a2.setName("사자");
		a2.setLocation("아프리카");
		a2.setAge(4);
		a2.setFilename("lion.jpg");

		Animal a3 = new Animal();
		a3.setId("A0003");
		a3.setName("코끼리");
		a3.setLocation("인도");
		a3.setAge(11);
		a3.setFilename("elephant.jpg");

		Animal a4 = new Animal();
		a4.setId("A0004");
		a4.setName("캥거루");
		a4.setLocation("호주");
		a4.setAge(3);
		a4.setFilename("kangaroo.jpg");
		
		listOfAnimals.add(a1);
		listOfAnimals.add(a2);
		listOfAnimals.add(a3);
		listOfAnimals.add(a4);
	}

	public ArrayList<Animal> getAllAnimals() {
		return listOfAnimals;
	}

	public Animal getAnimalById(String id) {
		Animal animalById = null;

		for (int i = 0; i < listOfAnimals.size(); i++) {
			Animal ani = listOfAnimals.get(i);
			if (ani != null && ani.getId() != null && ani.getId().equals(id)) {
				animalById = ani;
				break;
			}
		}
		return animalById;
	}

	public void addAnimal(Animal animal) {
		listOfAnimals.add(animal);
	}
}
