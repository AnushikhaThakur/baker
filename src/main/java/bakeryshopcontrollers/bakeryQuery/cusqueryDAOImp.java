package bakeryshopcontrollers.bakeryQuery;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
@Repository
@EnableTransactionManagement
public class cusqueryDAOImp implements cusqueryDAO{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void insert(cusquery q) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(q);
	}
	
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<cusquery> getAllQueries() {
		
		return sessionFactory.getCurrentSession().createQuery("from cusquery").list();
	}
	@Transactional
	public cusquery getcusquery(int queryid) {
		// TODO Auto-generated method stub
		return (cusquery)sessionFactory.getCurrentSession().createQuery("from cusquery q where q.queryid = :queryid").setInteger("queryid", queryid).list().get(0);
	}

}
