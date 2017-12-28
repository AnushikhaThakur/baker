package bakeryshopcontrollers.bakeryCustomers;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement

public class customersDAOImp implements customersDAO{


	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void insert(customers c) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(c);
	}


	@Transactional
	public List<customers> getAllcustomers() {
		
		return sessionFactory.getCurrentSession().createQuery("from customers").list();
	}
	@Transactional
	public customers getcustomers(int cid) {
		// TODO Auto-generated method stub
		return (customers)sessionFactory.getCurrentSession().createQuery("from customers c where c.Sign_Id = :cid").setInteger("cid", cid).list().get(0);
	}


}
