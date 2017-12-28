package bakeryshopcontrollers.bakeryProduct;

import java.util.List;



public interface productsDAO {
	public void insert(products p);
	public void update(products p);
	public void delete(int pid);
	public  List<products>getAllProducts();
     public  products getProduct(int pid);
     public  products getProductWithMaxId();

}
