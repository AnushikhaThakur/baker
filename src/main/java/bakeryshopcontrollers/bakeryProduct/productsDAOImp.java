package bakeryshopcontrollers.bakeryProduct;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import bakeryshopcontrollers.bakeryProduct.productsDAO;
import bakeryshopcontrollers.bakeryProduct.products;

@Repository
@EnableTransactionManagement
public class productsDAOImp implements productsDAO {
	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public void insert(products p){
	sessionFactory.getCurrentSession().save(p);	
	}
	@Transactional
	public void update(products p){
	sessionFactory.getCurrentSession().update(p);	
	}
	@Transactional
	public void delete(int pid){
	
		sessionFactory.getCurrentSession().createQuery("delete from products p where p.Product_Id = :pid").setInteger("pid",pid).executeUpdate();
	
	}

	@Transactional
	public  List<products> getAllProducts(){
		return sessionFactory.getCurrentSession().createQuery("from products").list();		
	}
    @Transactional 
	public  products getProduct(int pid){
    	 
    	return (products)sessionFactory.getCurrentSession().createQuery("from products p where p.Product_Id = :pid").setInteger("pid", pid).list().get(0);
    }
    @Transactional
	public products getProductWithMaxId() {
		// TODO Auto-generated method stub
		return (products)sessionFactory.getCurrentSession().createQuery("from products p where p.Product_Id =( select max(Product_Id) from Product )").list().get(0);
	}

}

