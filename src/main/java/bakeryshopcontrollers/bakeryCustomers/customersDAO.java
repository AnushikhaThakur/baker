package bakeryshopcontrollers.bakeryCustomers;

import java.util.List;


public interface customersDAO {
	public void insert(customers c);
	public List<customers> getAllcustomers();
	public  customers getcustomers(int cid);

}
