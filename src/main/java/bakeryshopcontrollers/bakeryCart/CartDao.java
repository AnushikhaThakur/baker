package bakeryshopcontrollers.bakeryCart;
import java.util.List;
public interface CartDao {
	public CartCategory getcartByid( int cartid);
	public CartCategory getcartbyUserName(String name);
	public String checkUserName(String name);
		public void insert(CartCategory c);
		public void update(CartCategory c);
		public void delete(int cid);
		public void deletebyCartid( int cartid);
		public List<CartCategory> getAllcategories();
		public CartCategory getcategory(int cid);
		public  CartCategory getProductWithMaxId();
		public List<CartCategory> getAllProductsInCart();
}
