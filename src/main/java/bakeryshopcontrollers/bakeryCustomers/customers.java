package bakeryshopcontrollers.bakeryCustomers;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity

@Table(name="Customer_data")

public class customers {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	int Sign_Id;
	@NotEmpty(message="Username cannot be empty") @Size(min=5,max=25, message="username must be between 4 and 20 charecters")
	private String Sign_username;
	@NotEmpty(message="Email cannot be empty")
	private String Sign_Email;
	@NotEmpty(message="password cannot be empty")
	private String Sign_Pass;
	@Transient @NotEmpty(message="confirm_password cannot be empty")
	private String Sign_confirm_Pass;
	@NotEmpty(message="DOB cannot be empty")
	private String Sign_Date;
	@NotEmpty(message="Address cannot be empty")
	private String Sign_Address;
	 @NotEmpty(message="Mobile_no cannot be empty") @Pattern(regexp="[7-9][0-9]{9,9}", message ="Mobile number must have a valid Indian Format")
	private String Sign_Mobile;
	
	 private String role="USER";
	 private boolean active=true;

public customers(){
	
}

public int getSign_Id() {
	return Sign_Id;
}

public void setSign_Id(int sign_Id) {
	Sign_Id = sign_Id;
}

public String getSign_username() {
	return Sign_username;
}

public void setSign_username(String sign_username) {
	Sign_username = sign_username;
}

public String getSign_Email() {
	return Sign_Email;
}

public void setSign_Email(String sign_Email) {
	Sign_Email = sign_Email;
}

public String getSign_Pass() {
	return Sign_Pass;
}

public void setSign_Pass(String sign_Pass) {
	Sign_Pass = sign_Pass;
}

public String getSign_confirm_Pass() {
	return Sign_confirm_Pass;
}

public void setSign_confirm_Pass(String sign_confirm_Pass) {
	Sign_confirm_Pass = sign_confirm_Pass;
}

public String getSign_Date() {
	return Sign_Date;
}

public void setSign_Date(String sign_Date) {
	Sign_Date = sign_Date;
}

public String getSign_Address() {
	return Sign_Address;
}

public void setSign_Address(String sign_Address) {
	Sign_Address = sign_Address;
}

public String getSign_Mobile() {
	return Sign_Mobile;
}

public void setSign_Mobile(String sign_Mobile) {
	Sign_Mobile = sign_Mobile;
}

public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}

public boolean isActive() {
	return active;
}

public void setActive(boolean active) {
	this.active = active;
}


}
