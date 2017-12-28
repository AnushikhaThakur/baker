    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:import url="headers.jsp" />
<style>

#lightbox{
	
	padding: 10px;


	}
#lightboxDetails{
	font-size: 0.8em;
	padding-top: 0.4em;
	}	
#lightboxCaption{ float: left; }
#lightbox img{ border: none; clear: both;} 

a.terms-link {
  color: #6a5b48;
  font-size: 13px;
  text-decoration: underline;
}

a:hover.terms-link {
  color: #6a5b48;
  font-size: 13px;
  text-decoration: none;
}
</style>
<script type="text/javascript">
$(document).ready(function(){

	var quantitiy=0;
	   $('.quantity-right-plus').click(function(e){
	        
	        // Stop acting like a button
	        e.preventDefault();
	        // Get the field name
	        var quantity = parseInt($('#quantity').val());
	        
	        // If is not undefined
	            
	            $('#quantity').val(quantity + 1);

	          
	            // Increment
	        
	    });

	     $('.quantity-left-minus').click(function(e){
	        // Stop acting like a button
	        e.preventDefault();
	        // Get the field name
	        var quantity = parseInt($('#quantity').val());
	        
	        // If is not undefined
	      
	            // Increment
	            if(quantity>0){
	            $('#quantity').val(quantity - 1);
	            }
	    });
</script>
</head>
<body>
<div class="container-fluid">
<h1> Displaying product Page</h1>

<!--<c:forEach items="${Item_data.keySet()}" var="x">

	<h1>${x}</h1>

	<c:forEach var="p" items="${Item_data.get(x)}">
	
		<h1>${p.getProduct_Name()}</h1>
	
	</c:forEach>

	<hr>

</c:forEach> -->

<div class="col-md-2" style="background-color:#DCDCDC;"></div>
<div class="col-md-8">
<div class="table-responsive">
<c:forEach items="${Item_data.keySet()}" var="x">
<center><div style="font-size:500% ;font-family: Monotype Corsiva, Times, serif;">${x}</div></center>

<c:forEach var="p" items="${Item_data.get(x)}">
                       
<div class="table stripped table-hover mainTR cake">
<div class="tbody">
<div class="mainTR row" id="4">

<div class="col-md-2">
<div class="media">
<a class="example-image-link"  href="#lighbox">
<img id="lightbox" alt="${p.getProduct_Name()}" title="${p.getProduct_Name()}" class="popimg  media-object example-image" src="${p.getProduct_Image()}" style="width: 110px; height: 86px;"  />
</a>
</div>
</div>
<div class="col-md-10">
<table class="table table-hover ">

<tr>
<th colspan="4"><a href="#" >${p.getProduct_Name()}</a></th>
</tr>
<c:forEach var="q" items="${p.getSubProducts()}">
<tr>
<td class="col-sm-6 col-md-6">
${q.getItem_Name()}</td>
<td class="col-sm-2 col-md-2 text-center">
<div class="input-group">
<span class="input-group-btn">

<button type="button" class="quantity-left-minus btn btn-warning btn-number"  data-type="minus" data-field="">
<span class="glyphicon glyphicon-minus"></span>
</button></span>
<input type="text" align="middle" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="10">

<span class="input-group-btn">
<button type="button" class="quantity-right-plus btn btn-warning btn-number" data-type="plus" data-field="">
<span class="glyphicon glyphicon-plus"></span></button></span></div>


</td>
<td class="col-sm-2 col-md-2 text-center">INR ${q.getItem_Price()}</td>
<td class="col-sm-1 col-md-1">
<span class="glyphicon glyphicon-shopping-cart addCardBox" aria-hidden="true" data-option="NA" id="4"></span>
</td>

</tr>
</c:forEach>
</table></div></div></div></div></c:forEach></c:forEach></div></div>
<div class="col-md-2" style="background-color:#DCDCDC;"></div>

</div>
<script type="text/javascript">
$(document).ready(function(){

var quantitiy=0;
   $('.quantity-right-plus').click(function(e){
        
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantity').val());
        
        // If is not undefined
            if(quantity<10)
            $('#quantity').val(quantity + 1);

          
            // Increment
        
    });

     $('.quantity-left-minus').click(function(e){
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantity').val());
        
        // If is not undefined
      
            // Increment
            if(quantity>0){
            $('#quantity').val(quantity - 1);
            }
    });
    
});
</script>
</body>
</html>