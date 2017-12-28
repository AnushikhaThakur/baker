package bakeryshopcontrollers.bakeryItems;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import bakeryshopcontrollers.bakeryItems.productitems;
import bakeryshopcontrollers.bakeryItems.productitemsDAO;

@Repository
@EnableTransactionManagement


public class productitemsDAOImp implements productitemsDAO{
	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public void insert(productitems i){
	sessionFactory.getCurrentSession().save(i);	
	}
	@Transactional
	public void update(productitems i){
	sessionFactory.getCurrentSession().update(i);	
	}
	@Transactional
	public void delete(int iid){
	
		sessionFactory.getCurrentSession().createQuery("delete from productitems i where i.Item_Id = :iid").setInteger("iid",iid).executeUpdate();
	
	}

	@Transactional
	public  List<productitems>getAllitems(){
		return sessionFactory.getCurrentSession().createQuery("from productitems ").list();		
	}
	@Transactional
	public  List<productitems>getAllitemswithoutid(){
		return sessionFactory.getCurrentSession().createQuery("from productitems i where i.pid=-1").list();		
	}
	
	
	@Transactional
	public  List<productitems>getAllitemsByPID(int pid){
		return sessionFactory.getCurrentSession().createQuery("from productitems  i where i.pid = :pid").setInteger("pid",pid).list();		
	}
	@Transactional 
	public  productitems getitems(int iid){
    	 
    	return (productitems )sessionFactory.getCurrentSession().createQuery("from productitems i where i.Item_Id = :iid").setInteger("iid", iid).list().get(0);
    }
    @Transactional
	public  productitems getitemsWithMaxId() {
		// TODO Auto-generated method stub
		return (productitems )sessionFactory.getCurrentSession().createQuery("from productitems i where i.Item_Id =( select max(Item_Id) from productitems  )").list().get(0);
	}
    


}



