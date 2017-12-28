package bakeryshopcontrollers.bakeryProduct;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import bakeryshopcontrollers.bakeryItems.productitems;
@Entity
@Table(name="bakery_product")
public class products {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	int Product_Id;
private String Product_Category;
private String Product_Name;
private String Product_Image;

@Transient
private List<productitems> subProducts =new ArrayList<productitems>();



public List<productitems> getSubProducts() {
	return subProducts;
}

public void setSubProducts(List<productitems> subProducts) {
	this.subProducts = subProducts;
}

@Transient
MultipartFile file;

public products(){}

public int getProduct_Id() {
	return Product_Id;
}

public void setProduct_Id(int product_Id) {
	Product_Id = product_Id;
}

public String getProduct_Category() {
	return Product_Category;
}

public void setProduct_Category(String product_Category) {
	Product_Category = product_Category;
}

public String getProduct_Name() {
	return Product_Name;
}

public void setProduct_Name(String product_Name) {
	Product_Name = product_Name;
}

public String getProduct_Image() {
	return Product_Image;
}

public void setProduct_Image(String product_Image) {
	Product_Image = product_Image;
}

public MultipartFile getFile() {
	return file;
}

public void setFile(MultipartFile file) {
	this.file = file;
}



}
