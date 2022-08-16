package dto;

import java.io.Serializable;

public class Animal implements Serializable{
	//해당 클래스의 변경 유무를 확인 하기위한 아이디.
	private static final long serialVersionUID = 8585082473015480296L;
	
	private String id;
	private String name;
	private String age;
	private String filename;
	private String local;
	private int quantity;
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	
	
	
	

}
