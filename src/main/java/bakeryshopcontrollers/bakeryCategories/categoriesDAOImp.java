package bakeryshopcontrollers.bakeryCategories;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;



@Repository
@EnableTransactionManagement
public class categoriesDAOImp implements categoriesDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void insert(categories c) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(c);
	}
	@Transactional
	public void update(categories c) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(c);
	}

	@Transactional
	public void delete(int cid) {
		// TODO Auto-generated method stub
		//sessionfactory.getcurrentsession().delete;
		sessionFactory.getCurrentSession().createQuery("delete from categories c where c.Category_Id = :cid").setInteger("cid", cid).executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<categories> getAllCategories() {
		
		return sessionFactory.getCurrentSession().createQuery("from categories").list();
	}
	@Transactional
	public categories getCategory(int cid) {
		// TODO Auto-generated method stub
		return (categories)sessionFactory.getCurrentSession().createQuery("from categories c where c.Category_Id = :cid").setInteger("cid", cid).list().get(0);
	}

}



