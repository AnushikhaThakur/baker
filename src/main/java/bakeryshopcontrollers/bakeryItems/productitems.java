package bakeryshopcontrollers.bakeryItems;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;





@Entity
@Table(name="product_items")
public class productitems {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int Item_Id;
private String Items_Category;
private String Item_Name;
private String Item_Price;
private String ContainsEggOrEggless;
private String quantity;
private int pid=-1;



public int getPid() {
	return pid;
}


public void setPid(int pid) {
	this.pid = pid;
}


public productitems(){}


public int getItem_Id() {
	return Item_Id;
}


public void setItem_Id(int item_Id) {
	Item_Id = item_Id;
}





public String getQuantity() {
	return quantity;
}


public void setQuantity(String quantity) {
	this.quantity = quantity;
}


public String getItems_Category() {
	return Items_Category;
}


public void setItems_Category(String items_Category) {
	Items_Category = items_Category;
}


public String getItem_Name() {
	return Item_Name;
}


public void setItem_Name(String item_Name) {
	Item_Name = item_Name;
}


public String getItem_Price() {
	return Item_Price;
}


public void setItem_Price(String item_Price) {
	Item_Price = item_Price;
}


public String getContainsEggOrEggless() {
	return ContainsEggOrEggless;
}


public void setContainsEggOrEggless(String containsEggOrEggless) {
	ContainsEggOrEggless = containsEggOrEggless;
}


}
