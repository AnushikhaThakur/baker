package bakeryshopcontrollers.bakeryCart;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;



@Repository
@EnableTransactionManagement
@Transactional

public class CartDaoImp implements CartDao{
	@Autowired
    SessionFactory sessionFactory;
public CartCategory getcartByid( int cartid){
	 List l = sessionFactory.getCurrentSession().createQuery("from CartCategory where cartid = :cartid").setInteger("cartid", cartid).list();
        
        if( l.size() > 0 )
            return (CartCategory)l.get(0);
        else
            return null;
            }
	
public CartCategory getcartbyUserName(String name){
	 List l = sessionFactory.getCurrentSession().createQuery("from CartCategory where name = :name").setString("name", name).list();
     
     if( l.size() > 0 )
         return (CartCategory)l.get(0);
     else
         return null;
 }	

public String checkUserName(String name){
	 List l = sessionFactory.getCurrentSession().createQuery("from CartCategory where UserName = :UserName").setString("UserName", name).list();
        
        if( l.size() == 0 )
            return "success";
        else
            return "failure";	
}
public void insert(CartCategory c){
	  // TODO Auto-generated method stub
    sessionFactory.getCurrentSession().save(c);
	
}
public void update(CartCategory c){
	   // TODO Auto-generated method stub
    sessionFactory.getCurrentSession().update(c);
}
public void delete(int cid){
	// TODO Auto-generated method stub
    //sessionfactory.getcurrentsession().delete;
    sessionFactory.getCurrentSession().createQuery("delete from CartCategory c where c.id = :cid").setInteger("cid", cid).executeUpdate();
}
public void deletebyCartid( int cartid){
	sessionFactory.getCurrentSession().createQuery("delete from CartCategory as i where i.cartid = :cartid").setInteger("cartid", cartid).executeUpdate();
	
}
public List<CartCategory> getAllcategories(){
	// TODO Auto-generated method stub
    return sessionFactory.getCurrentSession().createQuery("from CartCategory").list();	
}
public CartCategory getcategory(int cid){
	 // TODO Auto-generated method stub
    return (CartCategory)sessionFactory.getCurrentSession().createQuery("from CartCategory c where c.cartid = :cid").setInteger("cid", cid).list().get(0);	
}
public  CartCategory getProductWithMaxId(){
	  // TODO Auto-generated method stub
    return (CartCategory)sessionFactory.getCurrentSession().createQuery("from CartCategory c where c.cartid =( select max(cartid) from CartCategory )").list().get(0);	
}
public List<CartCategory> getAllProductsInCart(){
	// TODO Auto-generated method stub
    return sessionFactory.getCurrentSession().createQuery("from CartCategory").list();	
}

}
