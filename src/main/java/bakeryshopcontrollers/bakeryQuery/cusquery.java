package bakeryshopcontrollers.bakeryQuery;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="bakery_query")
public class cusquery {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	int Query_Id;
private String UserName;
private String email;
private String Query;
public cusquery() {
	
}
public int getQuery_Id() {
	return Query_Id;
}
public void setQuery_Id(int query_Id) {
	Query_Id = query_Id;
}
public String getUserName() {
	return UserName;
}
public void setUserName(String userName) {
	UserName = userName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getQuery() {
	return Query;
}
public void setQuery(String query) {
	Query = query;
}

	
}
