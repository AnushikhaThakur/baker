package bakeryshopcontrollers.bakeryCustomize;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;



@Repository
@EnableTransactionManagement

public class customizeDAOImp implements customizeDAO {

	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void insert(customize cu) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(cu);
	}
		@Transactional
	public void delete(int cuid) {
		// TODO Auto-generated method stub
		//sessionfactory.getcurrentsession().delete;
		sessionFactory.getCurrentSession().createQuery("delete from customize cu where cu.customize_Id = :cuid").setInteger("cuid", cuid).executeUpdate();
	}

	
	@Transactional
	public List<customize> getAllCustom_data() {
		
		return sessionFactory.getCurrentSession().createQuery("from customize").list();
	}
	@Transactional
	public customize getCustom_data(int cuid) {
		// TODO Auto-generated method stub
		return (customize)sessionFactory.getCurrentSession().createQuery("from customize cu where cu.customize_Id = :cuid").setInteger("cuid", cuid).list().get(0);
	}

}


	
	
	

