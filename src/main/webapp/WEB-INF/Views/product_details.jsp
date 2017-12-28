<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
 <title>Baker's Hut</title>
  <c:import url="/headers"/>
<style>
.img-responsive{
top: 1000px;

}
.col-sm-8 {
    border: 2px solid #DCDCDC;
    outline: #DCDCDC solid 15px;
    margin: auto;    
    padding: 20px;
    text-align: center;
}
.outl{
border:1px solid grey;
margin-top: 100px;
    margin-bottom: 100px;
    margin-right: 200px;
    margin-left: 200px;
background-color:white;
padding: 20px 50px 80px;
background-color:white;
box-shadow: 0px 0px 40px #696969;

}
h4{
 line-height: 50%;
}
h5{
 line-height: 50%;
}
.btn {
    border: none; /* Remove borders */
    color: white; /* Add a text color */
    padding: 14px 28px; /* Add some padding */
    cursor: pointer; /* Add a pointer cursor on mouse-over */
}
.warning {background-color: #ff9800;}
.warning:hover {background: #e68a00;}

</style>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
</head>
<body><div class="container">
 
 <c:import url="/navbar2"/>
<div class="outl">

<form action="${pageContext.request.contextPath }/AddToCart" method="post">
                <input type="hidden"  name="cartproductid" value="${iid}"/>
                <input type="hidden"  name="cartproductimageid" value="${productid}"/>
                
<c:forEach var="h" items="${productimageinproductdetails}">  <div class="col-md-4"><img src="${ h.getProduct_Image()}" class="img-thumbnail" style="float:right"/> </div></c:forEach>
 
 <c:forEach var="y" items="${iteminproductdetails}">               
<h3 class="modal-title" style= "color:#8B0000;">${ y.getItems_Category()}</h3>
<h5 style= "color:#000080;">${ y.getItem_Name()}</h5>
<h5 style= "color:#000080;">${ y.getContainsEggOrEggless()}</h5>
<h5 style= "color:#000080;">${ y.getItem_Price()}</h5>
<h5 style= "color:#000080;">Cash On Delivery</h5>
</c:forEach>
<div class="input-group">

<h5 style= "color:#000080;">Quantity</h5><input type="text" align="middle" id="quantity" name="cartproductquantity" class="form-control input-number" value="1" min="1" max="10" placeholder="quantity">


<br><br>
          <button type="submit"  class="btn btn-info" style="color:black"> ADD TO CART</button>
       </div>
</form></div></div> 
 
</body>
</html>