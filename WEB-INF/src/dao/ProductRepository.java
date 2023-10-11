package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅
    private static ProductRepository instance = new ProductRepository();

    
   public static ProductRepository getInstance(){
	return instance;
   }

	public ProductRepository() {
		Product phone = new Product("P1234", "Cottage Clog", 170000);
		phone.setDescription("color: Chestnut, Black, Cherry Pie");
		phone.setCategory("Shoes");
		phone.setManufacturer("Clog");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		Product notebook = new Product("P1235", "CA805 V2 Remix Heritage", 230000);
		notebook.setDescription("color: Chestnut, Black");
		notebook.setCategory("Sneakers");
		notebook.setManufacturer("Heritage");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");

		Product tablet = new Product("P1236", "UGG X Cookie Monster Tasman II", 120000);
		tablet.setDescription("color: Brown");
		tablet.setCategory("Slippers");
		tablet.setManufacturer("Tasman");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
        
        Product pen = new Product("P1237", "Classic Ultra Mini", 200000);
		tablet.setDescription("color: Smoke Plume");
		tablet.setCategory("Boots");
		tablet.setManufacturer("Classic");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
        
        Product book = new Product("P1238", "UGG X Cookie Monster Tasman II", 120000);
		tablet.setDescription("color: Brown");
		tablet.setCategory("Slippers");
		tablet.setManufacturer("Tasman");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
        listOfProducts.add(pen);
        listOfProducts.add(book);
		// listOfProducts.add(상품명);
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
