package bakeryshopcontrollers.bakeryCategories;

import java.util.List;

public interface categoriesDAO {
	public void insert(categories c);
	public void update(categories c);
	public void delete(int cid);
	public List<categories> getAllCategories();
	public  categories getCategory(int cid);


}
