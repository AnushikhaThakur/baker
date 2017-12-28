<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  
  <style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style>
  
  <div id="home"></div>
  
  <div class="row" >
    <div class="col-sm-4"></div>
  
  <div class="col-sm-4">
<center><img src="${pageContext.request.contextPath}/resources/images/newlogo.png" class="img-responsive" alt="logo" width="304" height="236"></center>
</div>
  
  <div class="col-sm-4" align="right"></div> 
  </div>
<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active" style="background-color:#3399FF;"><a href="${pageContext.request.contextPath}/home">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/menu">Menu</a></li> 
        <li><a href="${pageContext.request.contextPath}/customize">Customize</a></li> 
      </ul>
	 <ul class="nav navbar-nav navbar-right">
	  <c:choose>
	      					<c:when test="${not empty pageContext.request.userPrincipal}">
	      						<li><a href="#">${pageContext.request.userPrincipal.name}</a></li>
	      						<li><a href="${pageContext.request.contextPath}/logout">Log Out</a></li>
	      	
	      					</c:when>
	      					
	      					<c:otherwise>
        <li><a href="${pageContext.request.contextPath}/#signa" data-toggle="modal" data-target="#signa"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
        <li><a href="${pageContext.request.contextPath}/#myModal" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
           					</c:otherwise>
	      				</c:choose>
     
      </ul>
    </div>
</div>
    </nav>
<div class="container-fluid">

<!--  ************************************* login modal ******************************************************-->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
     <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
        <c:import url="login.jsp" /> 
        </div>
        <div class="modal-footer">
          
          <p>Not a member? <a href="#signa"  data-toggle="modal" data-target="#signa">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
          <p>Copyright &copy; Baker's Hut</p>
        </div></div></div></div> 
 <!--  ************************************* sign_up modal ******************************************************-->       
<div class="modal fade" id="signa" role="dialog">
    <div class="modal-dialog">
    <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-user"></span> Sign_Up</h4>
        </div>
         <div class="modal-body" style="padding:40px 50px;">
         <c:import url="signup.jsp" />
          <div class="modal-footer">
          
          <p>Already a member? <a href="#myModal" data-toggle="modal" data-target="#myModal" >login</a></p>
     	     <p>Copyright &copy; Baker's Hut</p>
     	     </div></div>
     </div>
  </div> </div></div>
  
  
  <script type="text/javascript">
	//$("#signa").modal('show');
	//alert('Hi');
</script>
  
  
  
  
  
  
  
  
  
  
  
  
  
  </div>