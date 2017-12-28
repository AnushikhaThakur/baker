package bakeryshopcontrollers;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.validation.constraints.Null;

import org.h2.util.New;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import bakeryshopcontrollers.bakeryCategories.categories;
import bakeryshopcontrollers.bakeryCategories.categoriesDAO;
import bakeryshopcontrollers.bakeryCustomers.customers;
import bakeryshopcontrollers.bakeryCustomers.customersDAO;
import bakeryshopcontrollers.bakeryItems.productitems;
import bakeryshopcontrollers.bakeryItems.productitemsDAO;
import bakeryshopcontrollers.bakeryProduct.products;
import bakeryshopcontrollers.bakeryProduct.productsDAO;
import bakeryshopcontrollers.bakeryQuery.cusquery;
import bakeryshopcontrollers.bakeryQuery.cusqueryDAO;
import bakeryshopcontrollers.bakeryCustomize.customize;
import bakeryshopcontrollers.bakeryCustomize.customizeDAO;
import bakeryshopcontrollers.bakeryCart.CartCategory;
import bakeryshopcontrollers.bakeryCart.CartDao;
@Controller 
public class MasterController {

	Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
            "cloud_name", "dfl7klov3",
            "api_key", "613879753182466",
            "api_secret", "5jNHCJ7I9k08UG76wtH5Q9qfERc"));

	
	public String test()
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
	    	System.out.println(auth.getName());
	    	//System.out.println("User present");
	    	return "false";
	    }
	    else
	    {
	    	System.out.println("User not present");
	    	return "true";
	    }
	    
	    
		
	}	
	
@Autowired
	categoriesDAO cdao;

@Autowired
productsDAO pdao;

@Autowired
productitemsDAO idao;

@Autowired
customersDAO cusdao;
@Autowired
customizeDAO customdao;

@Autowired
CartDao ctdao;

@Autowired
cusqueryDAO cqdao;


@Autowired
ServletContext context;

	
	@RequestMapping("/")
	 ModelAndView index()
		 { 
	ModelAndView modelAndView = new ModelAndView("/home");
	modelAndView.addObject("Sign", new bakeryshopcontrollers.bakeryCustomers.customers());
	modelAndView.addObject("que", new cusquery());
	return modelAndView;
		 }
	@RequestMapping("/index")
	 ModelAndView index2()
		 { 
	ModelAndView modelAndView = new ModelAndView("/home");
	modelAndView.addObject("Sign", new bakeryshopcontrollers.bakeryCustomers.customers());
	modelAndView.addObject("que", new cusquery());
	return modelAndView;
		 }

	
	@RequestMapping("/home")
ModelAndView home()
{
ModelAndView modelAndView = new ModelAndView("/home");
modelAndView.addObject("Sign", new bakeryshopcontrollers.bakeryCustomers.customers());
modelAndView.addObject("que", new cusquery());
return modelAndView;
}

	@RequestMapping("/addquerytoDB")
	ModelAndView addquerytoDB( @ModelAttribute("que") cusquery c23 )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/home");
		
		cqdao.insert(c23);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/navbar2", method = RequestMethod.GET)
	String navbar2()
	{
		return "navbar2";
	}

	
	@RequestMapping("/headers")
	ModelAndView headers()
	{
		ModelAndView modelAndView = new ModelAndView("headers");
		
		return modelAndView;
	}

	@RequestMapping("/customize")
 ModelAndView customize()
	 { 
ModelAndView modelAndView = new ModelAndView("/customize");
modelAndView.addObject("Custom", new bakeryshopcontrollers.bakeryCustomize.customize());	 
modelAndView.addObject("Sign", new bakeryshopcontrollers.bakeryCustomers.customers());
return modelAndView;
	 }
 @RequestMapping("/signup")
 ModelAndView signup()
	 { 
ModelAndView modelAndView = new ModelAndView("signup");
modelAndView.addObject("Sign", new bakeryshopcontrollers.bakeryCustomers.customers());
	 return modelAndView;
	 }
 @RequestMapping("/login")
 ModelAndView login()
	 { 
ModelAndView modelAndView = new ModelAndView("/login");
	 return modelAndView;
	 }
 /* ------------------------ Mapping categories crud operations -----------------------------------*/
	@RequestMapping("/add_categories")
	ModelAndView add_categories()
	{
		ModelAndView modelAndView = new ModelAndView("add_categories");
	
		modelAndView.addObject("cat", new categories());
		
		return modelAndView;
	}

	@RequestMapping("/add_categoriesToDB")
	ModelAndView add_categoriesToDB( @ModelAttribute("cat") categories c123 )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/add_categories");
		
		cdao.insert(c123);
		
		return modelAndView;
	}
	

	@RequestMapping("/DeletecategoriesFromDB/{cid}")
	ModelAndView DeletecategoriesFromDB( @PathVariable("cid") int cat_id )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/show_categories");
		
		cdao.delete(cat_id);
		
		return modelAndView;
	}
	@RequestMapping("/update_categories/{Category_Id}")
	ModelAndView update_categories1( @PathVariable("Category_Id") int id )
	{
		ModelAndView modelAndView = new ModelAndView("update_categories");
	
		categories c = cdao.getCategory(id);
		
		modelAndView.addObject("cat", c );
		
		return modelAndView;
	}

	
	@RequestMapping("/UpdateCategoryToDB")
	ModelAndView DeleteCategoryFromDB( @ModelAttribute("cat") categories c )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/show_categories");
		
		cdao.update(c);
		
		return modelAndView;
	}
	

	@RequestMapping("/show_categories")
	ModelAndView show_categories()
	{
		ModelAndView modelAndView = new ModelAndView("show_categories");
	
		modelAndView.addObject("catlist", cdao.getAllCategories() );
		
		return modelAndView;
	}
	/* ------------------------ Mapping product crud operations -----------------------------------*/
	@RequestMapping("/add_product")
	ModelAndView add_product(){
	ModelAndView modelAndView = new ModelAndView("add_product");
	
	modelAndView.addObject("pro", new products() );
	
	return modelAndView;

	}
	@RequestMapping("/AddProductToDB")
	ModelAndView AddProductToDB( @ModelAttribute("pro") products p123 )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/add_product");
		
		pdao.insert(p123);
		
		/* -----------code for image_cloudinary ---------*/
		try{
			String path = context.getRealPath("/");
	        
	        System.out.println(path);
	        
	        File directory = null;
	        
	        if (p123.getFile().getContentType().contains("image"))
	        {
	        	 File convFile = new File( context.getRealPath("/") + "/" + p123.getFile().getOriginalFilename());
                    convFile.createNewFile();
                    FileOutputStream fos = new FileOutputStream(convFile); 
                    fos.write(p123.getFile().getBytes());
                    fos.close();
                     Map uploadResult = cloudinary.uploader().upload( convFile , ObjectUtils.emptyMap());
                      System.out.println( uploadResult.get("secure_url") );
                     p123.setProduct_Image( ((java.util.Map) uploadResult).get("secure_url").toString() );
                    
                     System.out.println("*********"+p123.getProduct_Image());
                     pdao.update(p123);
	        	/* directory = new File(path + "\\resources\\images");
	            
	            System.out.println(directory);
	            
	            byte[] bytes = null;
	            File file = null;
	            bytes = p123.getFile().getBytes();
	            
	            if (!directory.exists()) directory.mkdirs();
	            
	            file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_" + product.getProduct_Id() + ".jpg");
	            
	            System.out.println(file.getAbsolutePath());
	            
	            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
	            stream.write(bytes);
	            stream.close();*/
	        }
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}
		
		return modelAndView;
	}
	@RequestMapping("/DeleteProductFromDB/{pid}")
	ModelAndView DeleteProductFromDB( @PathVariable("pid") int pro_id )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/show_product");
		
		pdao.delete(pro_id);
		
		return modelAndView;
	}
	
	@RequestMapping("/update_product/{Product_Id}")
	ModelAndView updateproduct( @PathVariable("Product_Id") int id )
	{
		ModelAndView modelAndView = new ModelAndView("update_product");
	
		products p = pdao.getProduct(id);
		
		modelAndView.addObject("pro", p );
		
					
		return modelAndView;
	}

	@RequestMapping("/UpdateProductToDB")
	ModelAndView UpdateProductFromDB( @ModelAttribute("pro") products p )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/show_product");
		 pdao.update(p);
		 try{
				String path = context.getRealPath("/");
		        
		        System.out.println(path);
		        
		        File directory = null;
		        
		        if (p.getFile().getContentType().contains("image"))
		        {
		        	 File convFile = new File( context.getRealPath("/") + "/" + p.getFile().getOriginalFilename());
	                    convFile.createNewFile();
	                    FileOutputStream fos = new FileOutputStream(convFile); 
	                    fos.write(p.getFile().getBytes());
	                    fos.close();
	                     Map uploadResult = cloudinary.uploader().upload( convFile , ObjectUtils.emptyMap());
	                      System.out.println( uploadResult.get("secure_url") );
	                     p.setProduct_Image( ((java.util.Map) uploadResult).get("secure_url").toString() );
	                    
	                     System.out.println("*********"+p.getProduct_Image());
	                     pdao.update(p);
		        	/* directory = new File(path + "\\resources\\images");
		            
		            System.out.println(directory);
		            
		            byte[] bytes = null;
		            File file = null;
		            bytes = p123.getFile().getBytes();
		            
		            if (!directory.exists()) directory.mkdirs();
		            
		            file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_" + product.getProduct_Id() + ".jpg");
		            
		            System.out.println(file.getAbsolutePath());
		            
		            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
		            stream.write(bytes);
		            stream.close();*/
		        }
			}
			catch( Exception e )
			{
				e.printStackTrace();
			}
			
			return modelAndView;
		}

	@RequestMapping("/show_product")
	ModelAndView show_product()
	{
		ModelAndView modelAndView = new ModelAndView("show_product");
	
		modelAndView.addObject("Product_list", pdao.getAllProducts() );
		
		return modelAndView;
	}
	
	/* ------------------------ Mapping item crud operations -----------------------------------*/
	@RequestMapping("add_items")
	ModelAndView add_items(){
		ModelAndView modelAndView = new ModelAndView("add_items");
	modelAndView.addObject("item",new productitems());
	
	return modelAndView;

	}
	@RequestMapping("/AdditemsToDB")
	ModelAndView AdditemsToDB( @ModelAttribute("item") productitems p1 )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/add_items");
		idao.insert(p1);
		return modelAndView;
	}
	@RequestMapping("/DeleteItemsFromDB/{iid}")
	ModelAndView DeleteItemsFromDB( @PathVariable("iid") int item_id )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/show_items");
		
		idao.delete(item_id);
		
		return modelAndView;
	}
	
	@RequestMapping("/update_items/{Item_Id}")
	ModelAndView update_itmes( @PathVariable("Item_Id") int id )
	{
		ModelAndView modelAndView = new ModelAndView("update_items");
	
		productitems i = idao.getitems(id);
		
		modelAndView.addObject("item", i );
		
					
		return modelAndView;
	}

	@RequestMapping("/UpdateItemsToDB")
	ModelAndView UpdateProductFromDB( @ModelAttribute("item") productitems i )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/menu");
		 idao.update(i);
					return modelAndView;
		}
/* ***********************************************Menu (arrangement of categories and product)********************************************************************************** */
	@RequestMapping("/menu")
	ModelAndView viewproductsByCategory()
	{
		ModelAndView modelAndView = new ModelAndView("menu");
		modelAndView.addObject("Sign", new bakeryshopcontrollers.bakeryCustomers.customers());	
		List<products> listP = pdao.getAllProducts();
		List<categories> listC = cdao.getAllCategories();
		
		HashMap< String, List<products> > hMap = new HashMap<String, List<products>>();
		
		for( categories categories : listC )
		{
			if( hMap.get(categories.getCategory_Name()) == null )
			{
				List<products> listPnew = new ArrayList<products>();
				
				for( products products : listP )
				{
					if( products.getProduct_Category().equals(categories.getCategory_Name()) )
					{
						products.setSubProducts( idao.getAllitemsByPID(products.getProduct_Id()));
						listPnew.add(products);
					}
						
				}
				
				hMap.put(categories.getCategory_Name(), listPnew);
			}
		}
		
		System.out.println(hMap);
		
		modelAndView.addObject("Item_data", hMap );
		
		return modelAndView;
	}
	
	
	@RequestMapping("/show_items")
	ModelAndView show_items()
	{
		ModelAndView modelAndView = new ModelAndView("show_items");
	
		modelAndView.addObject("Item_list", idao.getAllitems() );
		
		return modelAndView;
	}
	/* ------------------------ Mapping signup crud operations -----------------------------------*/	
  @RequestMapping(value="/AddCustomerToDB", method=RequestMethod.POST)
	
	ModelAndView AddCustomerToDB( @Valid @ModelAttribute("Sign") customers c123, BindingResult bind )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/");
		if (bind.hasErrors())
		{
			modelAndView = new ModelAndView("/home");
			modelAndView.addObject("Sign", c123);
			modelAndView.addObject("myerrors", "myerrors");
			
			return modelAndView;
		}
		else
		{
			
			
			if( !c123.getSign_Pass().equals(c123.getSign_confirm_Pass()) )
			{
				modelAndView = new ModelAndView("signup");
				modelAndView.addObject("mypasswordmismatch", "trypasswordmismatch");
				return modelAndView;
			}
			else
			{
				List<customers> l = cusdao.getAllcustomers();
					boolean found = false;
				for( customers s1 : l )
				{
					if( s1.getSign_username().equals(c123.getSign_username()) )
					{
						found = true;
						break;
					}
				}
				
				if( found )
				{
					modelAndView = new ModelAndView("signup");
					modelAndView.addObject("useralreadyexists", "useralreadyexists");
					return modelAndView;
				}
				else
				{
					modelAndView = new ModelAndView("redirect:/");
					cusdao.insert(c123);
					
					return modelAndView;
				}
				
				
			}
				
		}
	}
	
	/* ------------------------ Mapping custom crud operations -----------------------------------*/
	
	@RequestMapping("/AddCustomToDB")
		ModelAndView AddCustomToDB( @ModelAttribute("Custom") customize c11 )
		{
			ModelAndView modelAndView = new ModelAndView("redirect:/customize");
			
			customdao.insert(c11);
			try{
				String path = context.getRealPath("/");
		        
		        System.out.println(path);
		        
		        File directory = null;
		        
		        if (c11.getFile().getContentType().contains("image"))
		        {
		        	 File convFile = new File( context.getRealPath("/") + "/" + c11.getFile().getOriginalFilename());
	                    convFile.createNewFile();
	                    FileOutputStream fos = new FileOutputStream(convFile); 
	                    fos.write(c11.getFile().getBytes());
	                    fos.close();
	                     Map uploadResult = cloudinary.uploader().upload( convFile , ObjectUtils.emptyMap());
	                      System.out.println( uploadResult.get("secure_url") );
	                     c11.setCustomized_Image( ((java.util.Map) uploadResult).get("secure_url").toString() );
	                    
	                     System.out.println("*********"+c11.getCustomized_Image());
	                     customdao.insert(c11);
		        	/* directory = new File(path + "\\resources\\images");
		            
		            System.out.println(directory);
		            
		            byte[] bytes = null;
		            File file = null;
		            bytes = p123.getFile().getBytes();
		            
		            if (!directory.exists()) directory.mkdirs();
		            
		            file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_" + product.getProduct_Id() + ".jpg");
		            
		            System.out.println(file.getAbsolutePath());
		            
		            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
		            stream.write(bytes);
		            stream.close();*/
		        }
			}
			catch( Exception e )
			{
				e.printStackTrace();
			}
			
		
			return modelAndView;
		}
		
		@RequestMapping("/DeleteCustomFromDB/{cuid}")
		ModelAndView DeleteCustonFromDB( @PathVariable("cuid") int cu_id )
		{
			ModelAndView modelAndView = new ModelAndView("redirect:/show_custom");
			
			customdao.delete(cu_id);
			
			return modelAndView;
		}

		
		@RequestMapping("/show_custom")
		ModelAndView show_custom()
		{
			ModelAndView modelAndView = new ModelAndView("/show_custom");
		
			modelAndView.addObject("customlist", customdao.getAllCustom_data() );
			
			return modelAndView;
		}
		@RequestMapping( value ="/de", method = RequestMethod.POST)
		ModelAndView details(@RequestParam("quantity") String Item_Quantity ,HttpServletRequest req) 
		{
			ModelAndView modelAndView = new ModelAndView("redirect:/menu");
	         productitems p = new productitems();
	      
	            p.setQuantity(Item_Quantity);
	        idao.insert(p);
	        
		    return modelAndView;
	    }
			


		
		@RequestMapping( "/link_items/{Product_Id}")
		ModelAndView link_items (@PathVariable("Product_Id") int pc )
		{
			ModelAndView modelAndView = new ModelAndView("link_items");
			
						modelAndView.addObject("linkjsp", idao.getAllitemswithoutid());
						modelAndView.addObject("catId",pc);
			return modelAndView;
		}
		@RequestMapping(value= "/LinkProductsWithCategory",method=RequestMethod.POST)
		ModelAndView LinkProductsWithCategory (HttpServletRequest req)
		{
			ModelAndView modelAndView = new ModelAndView("redirect:/menu");
			String catId=req.getParameter("catId");
			System.out.println("CATID:"+ catId);
			String params[]= req.getParameterValues("productitems");
			for( String s: params)
			{
				System.out.println(s);
				productitems productitems= idao.getitems(Integer.parseInt(s));
				productitems.setPid(Integer.parseInt(catId));
				idao.update(productitems);
			}
						
			return modelAndView;
		}

		@RequestMapping("/product_details")
		 ModelAndView product_details()
			 { 
		ModelAndView modelAndView = new ModelAndView("product_details");
		modelAndView.addObject("Custom", new bakeryshopcontrollers.bakeryCustomize.customize());	 
		modelAndView.addObject("Sign", new bakeryshopcontrollers.bakeryCustomers.customers());

			 return modelAndView;
			 }

		@RequestMapping(value="/product_details1/{iid}/{productid}",method = RequestMethod.GET)
		ModelAndView product_details( @PathVariable("iid") int iid,@PathVariable("productid") int productid )
		{
			ModelAndView modelAndView = new ModelAndView("product_details");
			modelAndView.addObject("Custom", new bakeryshopcontrollers.bakeryCustomize.customize());	 
			modelAndView.addObject("Sign", new bakeryshopcontrollers.bakeryCustomers.customers());
			List<productitems> list1 = idao.getAllitems();
			List<productitems> list2 = new ArrayList<productitems>();
			
			for( productitems prodetails : list1 )
			{
				if( prodetails.getItem_Id()==(iid) )
					list2.add(prodetails);
			}
			
			modelAndView.addObject("iteminproductdetails", list2);
			
			List<products> list3 = pdao.getAllProducts();
			List<products> list4 = new ArrayList<products>();
			
			for( products pro1 : list3 )
			{
				if( pro1.getProduct_Id()==(productid) )
					list4.add(pro1);
			}
			
			modelAndView.addObject("productimageinproductdetails", list4);
			
			
			return modelAndView;
		}
		@RequestMapping(value="/AddToCart",method=RequestMethod.POST)
	    ModelAndView addToCart( @RequestParam("cartproductquantity") String cartproductquantity,@RequestParam("cartproductid") int Item_Id  ,@RequestParam("cartproductimageid") int Product_Id  ,HttpServletRequest req)
	    {
	        ModelAndView modelAndView = new ModelAndView("redirect:/cart");
	        	        
	        productitems i = idao.getitems(Item_Id);
	        products d = pdao.getProduct(Product_Id);
	        CartCategory c = new CartCategory();
	        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	           if (auth != null && !auth.getName().equals("anonymousUser"))
	           {    
	        	   System.out.println( auth.getName() );
	        	   
	               c.setUserName( auth.getName());
	           }
	        
	        
	        
	        c.setCart_Item_Name(i.getItem_Name());
	        c.setCartproductquantity(cartproductquantity);
	        c.setItem_Id(i.getItem_Id());
	        c.setCart_Product_Name(i.getItems_Category());
	        c.setCart_Product_Image(d.getProduct_Image());
	        c.setCart_Item_Price(i.getItem_Price());
	            
	        ctdao.insert(c);
	        
		    return modelAndView;
	    }


}
	
	
	
	
	
	
	
	
	
	



