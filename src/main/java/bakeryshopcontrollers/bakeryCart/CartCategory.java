package bakeryshopcontrollers.bakeryCart;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="bakery_Cart")
public class CartCategory implements Serializable {
	
int Item_Id;
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	int Id;

	
	
	private String Cart_Product_Name;
	private String Cart_Product_Image;
	private String Cart_Item_Name;

	private String Cart_Item_Price;
	
	private String billingaddress;

	private String UserName;
	private String cartproductquantity;
	@Transient
	MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}


	public String getCartproductquantity() {
		return cartproductquantity;
	}

	public void setCartproductquantity(String cartproductquantity) {
		this.cartproductquantity = cartproductquantity;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

		public String getBillingaddress() {
		return billingaddress;
	}

	public int getItem_Id() {
			return Item_Id;
		}


		public void setItem_Id(int item_Id) {
			Item_Id = item_Id;
		}


	public void setBillingaddress(String billingaddress) {
		this.billingaddress = billingaddress;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}




	public String getCart_Product_Name() {
		return Cart_Product_Name;
	}


	public void setCart_Product_Name(String cart_Product_Name) {
		Cart_Product_Name = cart_Product_Name;
	}


	public String getCart_Product_Image() {
		return Cart_Product_Image;
	}


	public void setCart_Product_Image(String cart_Product_Image) {
		Cart_Product_Image = cart_Product_Image;
	}


	public String getCart_Item_Name() {
		return Cart_Item_Name;
	}


	public void setCart_Item_Name(String cart_Item_Name) {
		Cart_Item_Name = cart_Item_Name;
	}


	public String getCart_Item_Price() {
		return Cart_Item_Price;
	}


	public void setCart_Item_Price(String cart_Item_Price) {
		Cart_Item_Price = cart_Item_Price;
	}


}


