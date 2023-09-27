package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅

	public ProductRepository() {
		Product phone = new Product("P1234", "Cottage Clog", 170000);
		phone.setDescription("color: Chestnut, Black, Cherry Pie");
		phone.setCategory("Shoes");
		phone.setManufacturer("Clog");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		Product notebook = new Product("P1235", "City Butte", 260000);
		notebook.setDescription("color: Worchester, Dune, Black");
		notebook.setCategory("Boots");
		notebook.setManufacturer("Butte");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");

		Product tablet = new Product("P1236", "UGG X Cookie Monster Tasman II", 120000);
		tablet.setDescription("color: Brown");
		tablet.setCategory("Slippers");
		tablet.setManufacturer("Tasman");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
}