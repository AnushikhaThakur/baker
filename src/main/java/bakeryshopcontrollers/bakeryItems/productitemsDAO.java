package bakeryshopcontrollers.bakeryItems;

import java.util.List;

public interface productitemsDAO {
	public void insert( productitems i);
	public void update(productitems i);
	public void delete(int iid);
	public  List<productitems>getAllitems();
	
	public  List<productitems>getAllitemsByPID(int pid);
	
     public  productitems getitems(int iid);
     public  productitems getitemsWithMaxId();
     public  List<productitems>getAllitemswithoutid();
}
