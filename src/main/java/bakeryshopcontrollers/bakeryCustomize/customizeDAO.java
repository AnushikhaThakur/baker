package bakeryshopcontrollers.bakeryCustomize;

import java.util.List;
public interface customizeDAO {
	 public void insert(customize cu);
	 public void delete(int cuid);
	 public List<customize> getAllCustom_data();
		public  customize getCustom_data(int cuid);


}
