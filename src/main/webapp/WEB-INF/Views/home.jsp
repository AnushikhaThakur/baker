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
 background-color: #F5F5DC; 
<!-- background: url("resources/images/back16.jpg"); -->
 } 
 
</style>
<style>
.img-responsive{
top: 1000px;
}
</style>  
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
   border: 100px ;
    }


.para{
color:white;
 font-size: 250%;
 text-shadow: 3px 2px #191970;
  font-family: "Monotype Corsiva", Times, serif;
}

#about{
 font-size: 300%;
  font-family: "Monotype Corsiva", Times, serif;
}
#con{
 font-size: 300%;
  font-family: "Monotype Corsiva", Times, serif;
}


#rot{
transform: rotate(7deg);

}



</style>
 <style>
 .offer{
  
 border: 5px solid grey;
	 border-radius: 8px;
    //background-color: #008080;
	background-image: url('resources/images/bav.jpg');
	
    
    padding-top: 50px;
    padding-right: 30px;
    padding-bottom: 50px;
    padding-left: 30px;
 
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

 .contact{
  
 border: 5px solid grey;
	 border-radius: 8px;
    //background-color: #008080;
	background-image: url('resources/images/cona.jpg');
	
    
    padding-top: 50px;
    padding-right: 30px;
    padding-bottom: 50px;
    padding-left: 30px;
 
 }
.query{
	border: 5px solid grey;
	 border-radius: 8px;
    background-color: #c18d0b;
	opacity: 0.8;
    filter: alpha(opacity=50);
    padding-top: 50px;
    padding-right: 30px;
    padding-bottom: 50px;
    padding-left: 30px;
transform: rotate(-7deg);
	}

.btn btn-info btn-lg{

background-color:black;
}



 .foot {background: #aaa;color:white;
 -webkit-order:3;order:3;
 text-align:center;}
 </style>
 </head>
<body>

<div class="container-fluid" >
  <c:import url="navbar.jsp" />
   <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="4000">
    <!-- Indicators -->
<ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
	  <li data-target="#myCarousel" data-slide-to="5"></li>
	  <li data-target="#myCarousel" data-slide-to="6"></li>
	</ol>
        <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
<div class="item active">
        <img src="resources/images/bakery1212.jpg"  id="borderimg2" width="750" height="400" border="8px,black">
<div class="carousel-caption">
  <blockquote class="blockquote-reverse">
        <footer><strong><p class="para">Welcome to the Baker's Hut. We offer.....</p> </strong></footer>
  </blockquote>

        </div>

		</div>

      <div class="item">
        <img src="resources/images/cake1212.jpg"  id="borderimg2" width="750" height="400" border="8px,black">
<div class="carousel-caption">
  <blockquote class="blockquote-reverse">
           <footer><strong><p class="para">Special cakes for special days .</p> </strong></footer>
  </blockquote>

        </div>

		</div>
    
      <div class="item">
        <img src="resources/images/pastry1.jpg" id="borderimg2" width="750" height="400" border="8px,black">
<div class="carousel-caption">
  <blockquote class="blockquote-reverse">
                   <footer><strong><p class="para">Quality breads and pasteries made to order .</p> </strong></footer>
  </blockquote>

        </div>

		</div>
<div class="item">
        <img src="resources/images/chips1.jpg" id="borderimg2" width="750" height="400" border="8px,black">
<div class="carousel-caption">
  <blockquote class="blockquote-reverse">
                   <footer><strong><p class="para">freshly baked chips...</p> </strong></footer>
  </blockquote>

        </div>
     
	 </div>
	
      <div class="item">
        <img src="resources/images/moment1.jpg" id="borderimg2" width="750" height="400" border="8px,black">
<div class="carousel-caption">
  <blockquote class="blockquote-reverse">
          <footer><strong> <p class="para">So give a moment to yourself .</p> </strong></footer>
  </blockquote>

        </div>

		</div>
    
	<div class="item">
        <img src="resources/images/afternoon1.jpg" id="borderimg2" width="750" height="400" >
<div class="carousel-caption">
  <blockquote class="blockquote-reverse">
          <footer><strong> <p class="para">Give your afternoon a lift .</p> </strong></footer>
  </blockquote>

        </div>

		</div>
	
	
	<div class="item">
        <img src="resources/images/inside1.jpg" id="borderimg2" width="750" height="400" >
      <div class="carousel-caption">
  <blockquote class="blockquote-reverse">
                <footer><p class="para">Belive us, you'll love what's inside even more .</p></footer>
  </blockquote>

        </div>
</div>
	
	
	</div>
<!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" style="background-color:#FFFAF0;" width="750" height="400">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" style="color:#FFFFF0"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" style="background-color:#FFFAF0;" width="750" height="400">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="color:	#FFFFF0" width="750" height="400"></span>
      <span class="sr-only">Next</span>
    </a>

 </div>
 <br><br><br>
<div class="offer">
 <br>
 <center><img src="resources/images/banner (3).png"  alt="logo" style="width:80%; height:200px;" class="img-thumbnail"></center>
 <br>
  <div class="container">
  <div class="row" >
    
	<div class="col-sm-4">
      <img src="resources/images/banner (1).jpg" class="img-thumbnail" alt="not found" >
</div>
  
  <div class="col-sm-4">
<img src="resources/images/banner (2).jpg" class="img-thumbnail" alt="not found" >
</div>
  
  <div class="col-sm-4" >
<img src="resources/images/banner (3).jpg" class="img-thumbnail" alt="not found" >
</div> 
  </div>
    
  </div>
  <br>
  </div>
<br><br>

  <div class="padding" id="ab">
<a href="#home"><i class="glyphicon glyphicon-home"></i></a>
  <div class="container-fluid">
  <div class="row" >
  <div class="col-sm-6">
  <div id="about"  style=" color:#008080;text-shadow: 2px 2px 4px #B0C4DE;">About_Us</div>
<p style=" color:#FFF0F5;">In 2010, Baker's Hut opened its first bakery shop location in Chandni Chowk, Delhi. From its inception, Bakery's is known as bakery unique for our  cupcakes and cakes. We take pride in using natural ingredients in our cupcakes, cakes and desserts.

Our treats are as deliciously wholesome as they are beautifully decorated. Choose from our signature cupcakes, weekly and holiday specials or custom created desserts.</p>
</div>
<div class="col-sm-2"></div>
<div class="col-sm-4"><img src="resources/images/best.png" id="rot"  alt="logo" class="img-thumbnail"></div>

</div></div></div>
<br><br>

<div class="contact" id="co">
<a href="#home"><i class="glyphicon glyphicon-home"></i></a> 
	
  <div class="row" >
    
	<div class="col-sm-8">
 <h1 id="con"  style=" color:#c18d0b;text-shadow: 2px 2px 4px black;">Contact_Us</h1>     

<h3 style=" color:#c18d0b;">Contact NO: 9876543212</h3>
<h3 style=" color:#c18d0b;">Email : bakershut@gmail.com</h3>
<h3 style=" color:#c18d0b;">Bakery Address: Baker's Hut ,shop no:12,Chandni Chawok Market,Delhi.</h3>
</div>
  
  <div class="col-sm-4">
<div class="query">
  <h1>Query??</h1>
  <form:form action="addquerytoDB" method="post" modelAttribute="que">
<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <form:input id="UserName" type="text"  path="UserName" placeholder="UserName" />
    </div><br>
<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <form:input id="email" type="text"  path="email" placeholder="Email"/>
    </div><br>
<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
      <form:input id="text" type="text"  path="Query" placeholder="Ask your queries here........" />
    </div><br>
	<center><button type="submit" class="btn btn-default" style="font-size:200%; color:#F08080;">Submit</button></center>
	</form:form></div>
</div>
  
  </div>
    
  </div>
  <br>
  

  <br>
<footer class="foot">Copyright &copy; Baker's Hut</footer>
  </div>
</body>
</html>