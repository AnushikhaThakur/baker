package bakeryshopcontrollers.bakeryCustomize;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="bakery_customize_data")
public class customize {
@Id @GeneratedValue(strategy=GenerationType.AUTO)
 int customize_Id;
private String Your_Name;
private String Phone_no;
private String Email;
private String Quantity;
private String Flavour;
private String Shape;
private String Eggless;
private String Delivery_Date;
private String Pick;
private String Message;
private String Notes;
private String Customized_Image;

@Transient
MultipartFile file;


public customize(){
}

public int getCustomize_Id() {
	return customize_Id;
}

public void setCustomize_Id(int customize_Id) {
	this.customize_Id = customize_Id;
}

public String getYour_Name() {
	return Your_Name;
}

public void setYour_Name(String your_Name) {
	Your_Name = your_Name;
}

public String getPhone_no() {
	return Phone_no;
}

public void setPhone_no(String phone_no) {
	Phone_no = phone_no;
}

public String getEmail() {
	return Email;
}

public void setEmail(String email) {
	Email = email;
}

public String getQuantity() {
	return Quantity;
}

public void setQuantity(String quantity) {
	Quantity = quantity;
}

public String getFlavour() {
	return Flavour;
}

public void setFlavour(String flavour) {
	Flavour = flavour;
}

public String getShape() {
	return Shape;
}

public void setShape(String shape) {
	Shape = shape;
}

public String getEggless() {
	return Eggless;
}

public void setEggless(String eggless) {
	Eggless = eggless;
}

public String getDelivery_Date() {
	return Delivery_Date;
}

public void setDelivery_Date(String delivery_Date) {
	Delivery_Date = delivery_Date;
}

public String getPick() {
	return Pick;
}

public void setPick(String pick) {
	Pick = pick;
}

public String getMessage() {
	return Message;
}

public void setMessage(String message) {
	Message = message;
}

public String getNotes() {
	return Notes;
}

public void setNotes(String notes) {
	Notes = notes;
}

public String getCustomized_Image() {
	return Customized_Image;
}

public void setCustomized_Image(String customized_Image) {
	Customized_Image = customized_Image;
}

public MultipartFile getFile() {
	return file;
}

public void setFile(MultipartFile file) {
	this.file = file;
}

}










