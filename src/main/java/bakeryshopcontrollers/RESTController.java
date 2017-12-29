package bakeryshopcontrollers;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UriComponentsBuilder;

import bakeryshopcontrollers.bakeryCart.CartCategory;
import bakeryshopcontrollers.bakeryCart.CartDao;

@org.springframework.web.bind.annotation.RestController
public class RESTController {
    @Autowired
    CartDao cadao;
    @Autowired
    ServletContext context;
    
    @RequestMapping(value="/getAllItemsInCart",method=RequestMethod.POST)
    public ResponseEntity<String> getAllProductsInCart()
    {    
        List<CartCategory> list = cadao.getAllProductsInCart();
        System.out.println("**********??***********");
        JSONArray jsonArray = new JSONArray();
        
        String username = "";
        
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && !auth.getName().equals("anonymousUser"))
        {  
        	username = auth.getName();
        }
        
        for( CartCategory c : list )
        {
            JSONObject jsonObject = new JSONObject();
            
            if( c.getUserName() != null && c.getUserName().equals(username) )
            {
            	jsonObject.put("cid", c.getId());
                jsonObject.put("ciiid", c.getItem_Id());
                jsonObject.put("cpname", c.getCart_Product_Name());
                jsonObject.put("ciname", c.getCart_Item_Name());
                jsonObject.put("cimage", c.getCart_Product_Image());
                jsonObject.put("cprice", c.getCart_Item_Price());
                
                jsonObject.put("ccartquantity", c.getCartproductquantity());
                jsonArray.add(jsonObject);
            }
            
        }
        System.out.println("*********************");
        System.out.println( jsonArray.toJSONString() );
        
        return new ResponseEntity<String>(jsonArray.toJSONString(),HttpStatus.OK);
    }
      @RequestMapping(value="/removebuttonincart",method=RequestMethod.POST)
    public ResponseEntity<String> removebuttonincart(@RequestBody String data)
    {    
        System.out.println(data);
        
        JSONParser jsonParser = new JSONParser();
        
        JSONObject responseJSON = new JSONObject();
        
        try
        {
            
            JSONObject jsonObject = (JSONObject)jsonParser.parse(data);
            int cartid = Integer.parseInt(jsonObject.get("cid").toString());
            cadao.delete(cartid);
            
            responseJSON.put("message", "deleted");
        }
            catch( Exception e )
        {
            e.printStackTrace();
            responseJSON.put("message", "failed");
        }
        
            
        return new ResponseEntity<String>(responseJSON.toJSONString(),HttpStatus.OK);
    }
  
    
    @RequestMapping(value="/removeFromCart",method=RequestMethod.POST)
    public ResponseEntity<String> removeFromCart()
    {    
        //System.out.println(data);
        System.out.println("removeFromCart");
        
        JSONParser jsonParser = new JSONParser();
        
        JSONObject responseJSON = new JSONObject();
        
        String username = "";
        
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && !auth.getName().equals("anonymousUser"))
        {  
        	username = auth.getName();
        }
        
        try
        {
            
            //JSONObject jsonObject = (JSONObject)jsonParser.parse(data);
            
            for( CartCategory c : cadao.getAllProductsInCart() )
            {
                if( c.getUserName() != null && c.getUserName().equals(username) )
                {
                	cadao.delete(c.getId());
                }
                
            }
            
            responseJSON.put("message", "deleted");
        }
            catch( Exception e )
        {
            e.printStackTrace();
            responseJSON.put("message", "failed");
        }
        
            
        return new ResponseEntity<String>(responseJSON.toJSONString(),HttpStatus.OK);
    }

    @CrossOrigin
    @RequestMapping(value = "/updateAddresses", method = RequestMethod.POST)
    public ResponseEntity<String> updateAddresses(HttpServletRequest request, HttpServletResponse response, @RequestBody String inputdata, UriComponentsBuilder ucBuilder) 
    {
        JSONParser jpar = new JSONParser();
        
        JSONObject jobj = new JSONObject();
        
        try
        {
            jobj = (JSONObject)jpar.parse(inputdata);
        }
        catch(Exception e)
        {
            System.out.println("ERROR READING ADDRESSES");
        }
        
        System.out.println(jobj.get("Sign_Address").toString());
        System.out.println(jobj.get("billingaddress").toString());
        
        List<CartCategory> list = (List<CartCategory>) cadao.getAllProductsInCart();
        
        String user = "";
        
        System.out.println("In Update Addresses");
        
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
           if (auth != null && !auth.getName().equals("anonymousUser"))
           {    
               user = auth.getName();
           }
        
           System.out.println(list);
           
           for( CartCategory item:list )
           {
            
               System.out.println(user);
               System.out.println(item.getCart_Product_Name());
               
               try
               {
                   System.out.println( item.getUserName().equals(user) );
                   
                   if( item.getUserName().equals(user) )
                   {
                       
                       item.setBillingaddress(jobj.get("billingaddress").toString());
                       
                       cadao.update(item);
                   }
               }
               catch( Exception e )
               {
                   e.printStackTrace();
               }
               
            
           }
         
           JSONObject res = new JSONObject();
           
           res.put("status", "updated");
           
        return new ResponseEntity<String>(res.toJSONString(), HttpStatus.CREATED);
    }
 
    
 

}
