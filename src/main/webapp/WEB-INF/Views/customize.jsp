<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Baker's Hut</title>
  <c:import url="headers.jsp" />
 
  <style>
 body{
 background: url("resources/images/background.jpg");
 }


  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
   border: 100px ;
   
    }

#myCarousel1{
transform: rotate(-7deg);
}
p{
color:white;
 font-size: 200%;
 text-shadow: 3px 2px #191970;
  font-family: "Monotype Corsiva", Times, serif;
}
  .padding {
	border: 5px solid grey;
	 border-radius: 8px;
    background-color: black;
	opacity: 0.8;
    filter: alpha(opacity=50);
    padding-top: 50px;
    padding-right: 30px;
    padding-bottom: 50px;
    padding-left: 30px;
}
  
   .offer{
  
 border: 5px solid grey;
	 border-radius: 8px;
    background-color: #BC8F8F;
	//background-image: url('bav.jpg');
	opacity: 0.8;
    filter: alpha(opacity=50);
    
    
    padding-top: 50px;
    padding-right: 30px;
    padding-bottom: 50px;
    padding-left: 30px;
 
 }
 .foot {background: #aaa;color:white;
 -webkit-order:3;order:3;
 text-align:center;}

 </style>
</head>
<body>
<div class="container-fluid">
  <c:import url="navbar2.jsp" />
 <div id="myCarousel" class="carousel" data-ride="carousel" data-interval="4000">
    
<ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      
	</ol>
           <div class="carousel-inner" role="listbox">
      <div class="item active"><img src="resources/images/banner_4.png" class="img-thumbnail"  id="borderimg2" width="600" height="100" style="border-color:solid grey"></div>
      <div class="item"><img src="resources/images/banner_2.png"  class="img-thumbnail" id="borderimg2" width="600" height="100" ></div>
     <div class="item"><img src="resources/images/banner_3.png"   class="img-thumbnail" id="borderimg2" width="600" height="100" ></div> 
	 <div class="item"><img src="resources/images/banner_1.png"  class="img-thumbnail" id="borderimg2" width="600" height="100" ></div>
	
	</div></div>  
<br><br>
  <div class="padding">
  <div class="row" >
    
	<div class="col-sm-6">
 <h1 id="con"  style=" color:#c18d0b;text-shadow: 2px 2px 4px black;">If You Can dream it,we can bake it.....</h1>     
<br><br><br>
 <p style=" color:#FFF0F5;">we are specialised in designing custom cake as per your choice, for memorable moments like birthdays, weddings, anniversary and other special ocassions.
We also provide beautiful packing as per your requirement.
</p>
<p style=" color:#FFF0F5;"><strong>Please give at least 2 days prior notice for your custom orders</strong></p>
 <br><br>
 <table style="font-size:100%; color:white;">
 <tr>
 <td><h2>Cake Size</h2></td>
 <td><h2>Additional Charges</h2></td>
 </tr>
 <tr>
 <td>0.5 kg serves 6 people</td>
 <td>	INR 500 for customised cakes decoration</td>
 </tr>
 <tr>
 <td>1 kg serves 8-12 people</td>
 <td>INR 300 for photo cake</td>
 </tr>
 <tr>
 <td>2 kg serves 20 people</td>
 <td>INR 50 per kg for egg-less selection</td>
 </tr>
 <tr><td>5 kg serves 50 approx people</td>
 <td>Extra Charges for Gift Packing </td>
 </tr>
 <tr><td>5 kg serves 100-120 people</td>
 <td> Delivery Charges</td>
 </tr>
 </table>
 </div>
   <div class="col-sm-6"><div id="myCarousel1" class="carousel" data-ride="carousel" data-interval="4000" style="top:80px">
    
<ol class="carousel-indicators">
      <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel1" data-slide-to="1"></li>
      <li data-target="#myCarousel1" data-slide-to="2"></li>
      <li data-target="#myCarousel1" data-slide-to="3"></li>
      <li data-target="#myCarousel1" data-slide-to="4"></li>
      <li data-target="#myCarousel1" data-slide-to="5"></li>
      <li data-target="#myCarousel1" data-slide-to="6"></li>
      <li data-target="#myCarousel1" data-slide-to="7"></li>
	<li data-target="#myCarousel1" data-slide-to="8"></li>
	</ol>
           <div class="carousel-inner" role="listbox">
      <div class="item active"><img src="resources/images/1.jpg" class="img-thumbnail"  id="borderimg2" width="300" height="400"></div>
      <div class="item"><img src="resources/images/2.jpg"  class="img-thumbnail" id="borderimg2" width="300" height="400" ></div>
     <div class="item"><img src="resources/images/3.jpg"   class="img-thumbnail" id="borderimg2" width="300" height="400" ></div> 
	 <div class="item"><img src="resources/images/4.jpg"  class="img-thumbnail" id="borderimg2" width="300" height="400" ></div>
	<div class="item"><img src="resources/images/5.jpg"  class="img-thumbnail" id="borderimg2" width="300" height="400" ></div>
	<div class="item"><img src="resources/images/6.jpg"  class="img-thumbnail" id="borderimg2" width="300" height="400" ></div>
	<div class="item"><img src="resources/images/7.jpg"  class="img-thumbnail" id="borderimg2" width="300" height="400" ></div>
	<div class="item"><img src="resources/images/8.jpg"  class="img-thumbnail" id="borderimg2" width="300" height="400" ></div>
	<div class="item"><img src="resources/images/9.jpg"  class="img-thumbnail" id="borderimg2" width="300" height="400" ></div>
	</div></div>  
</div>
  </div>
</div>
<br><br>


 <div class="offer"> 

 
 <div class="container-fluid">
 <center><h1 style="color:#2F4F4F">Customize your cake ********</h1></center>
 
 <form:form action="AddCustomToDB" method="post" modelAttribute="Custom" enctype="multipart/form-data">
    <div class="input-group">
      <span class="input-group-addon"><form:input type="text" class="form-control" id="name" placeholder="Your_Name" path="Your_Name"/></span>
    </div>
    <div class="input-group">
      <span class="input-group-addon"><form:input type="text" class="form-control" id="Phone_no" placeholder="Phone_no" path="Phone_no"/></span>
    </div>
	<div class="input-group">
     <span class="input-group-addon"> <form:input type="email" class="form-control" id="email" placeholder="Enter email" path="Email"/></span>
    </div>
	<div class="input-group">
     <span class="input-group-addon"> <form:select class="form-control" id="sel1"  path="Quantity">
        <option style="color:#d9d9d9">Please Select Quantity</option>
		<option>2 kg</option>
        <option>3 kg</option>
        <option>4 kg</option>
      <option>5 kg</option>
	  <option>10 kg</option>
	  </form:select></span>
    </div>
	<div class="input-group">
     <span class="input-group-addon"> <form:select class="form-control" id="sel1"  path="Flavour">
        <option style="color:#d9d9d9">Please Select a Flavour</option>
		<option>chocolate</option>
        <option>truffle</option>
        <option>pineapple</option>
        <option>blackforest</option>
      <option>whiteforest</option>
        <option>freshfruit</option>
        <option>butterSchotch</option>
        <option>other(please specify in the note box)</option>
	  </form:select></span>
    </div>
	<div class="input-group">
     <span class="input-group-addon"> <form:select class="form-control" id="sel1"  path="Shape">
        <option style="color:#d9d9d9;">Please Select Shape</option>
		<option>square</option>
        <option>round</option>
        <option>rectangle</option>
        <option>customize(please specify in the note box)</option>
      </form:select></span></div>
	<div class="input-group">
    <span class="input-group-addon"><form:select class="form-control" id="sel1"  path="Eggless">
        <option style="color:#d9d9d9;">Eggless</option>
		<option>yes</option>
        <option>no</option>
         </form:select></span></div>
	<div class="input-group">
     <span class="input-group-addon"> <form:input type="Date" class="form-control" id="Delivery Date" placeholder="Delivery Date" path="Delivery_Date"/></span>
    </div>

	<div class="input-group">
	<span class="input-group-addon"> <form:select class="form-control" id="sel1" path="Pick">
        <option style="color:#d9d9d9;"> Time To Pick</option>
		<option>afternoon</option>
        <option>evening</option>
        </form:select></span></div>
    <div class="input-group">
     <span class="input-group-addon"><form:input type="Message" class="form-control" id="Message" placeholder="Message On The Cake" path="Message"/></span>
    </div>
<div class="input-group">
     <span class="input-group-addon"><form:input type="Notes" class="form-control" id="Notes" placeholder="Notes" path="Notes"/></span>
    </div>
<div class="input-group">
     <span class="input-group-addon"><form:input type="file" placeholder="uplode pic"  path="file" /></span>
    </div>


<br>
	<center><button type="submit" class="btn btn-default" style="font-size:150%; color:#F08080;">Send Your Enquiry.</button></center>
  </form:form> 
</div><br></div>
<footer class="foot">Copyright &copy; Baker's Hut</footer>
</div>
</body>
</html>