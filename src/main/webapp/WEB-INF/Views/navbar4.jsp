<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

  <div class="row" >
    <div class="col-sm-4"></div>
  
  <div class="col-sm-4">
<center><img src="${pageContext.request.contextPath}/resources/images/newlogo.png" class="img-responsive" alt="logo" width="304" height="236"></center>
</div>
 <div class="col-sm-4" ></div> 
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
	      					
	      				</c:choose>
     
      </ul>
    </div>
</div>
    </nav>
