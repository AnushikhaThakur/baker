package bakeryshopcontrollers.bakeryQuery;
import java.util.List;


public interface cusqueryDAO {
	public void insert(cusquery q);

	public List<cusquery> getAllQueries();
	public  cusquery getcusquery(int queryid);

}
