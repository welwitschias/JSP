package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance() {
		return instance;
	}

	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");

		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");

		Product sunglasses = new Product("P9999", "선글라스", 200000);
		sunglasses.setDescription("자외선으로부터 눈을 보호해줍니다.");
		sunglasses.setCategory("안경");
		sunglasses.setManufacturer("안경공장");
		sunglasses.setUnitsInStock(100);
		sunglasses.setCondition("New");
		sunglasses.setFilename("P9999.jpg");

		Product notebook2 = new Product("P9998", "최신 노트북", 1500000);
		notebook2.setDescription("휴대용 컴퓨터 입니다.");
		notebook2.setCategory("전자제품");
		notebook2.setManufacturer("노트북공장");
		notebook2.setUnitsInStock(10);
		notebook2.setCondition("New");
		notebook2.setFilename("P9998.jpg");

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		listOfProducts.add(sunglasses);
		listOfProducts.add(notebook2);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}

	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
