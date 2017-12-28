 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 
 <c:if test="${not empty mypasswordmismatch }">
  
  	<label class="alert alert-danger">Passwords do not match</label>
  
  </c:if>
  
  <c:if test="${not empty useralreadyexists }">
  
  	<label class="alert alert-danger">User-name already exists</label>
  
  </c:if>
  
   <c:if test="${not empty myerrors }">
  
  	
  
  </c:if>
 
  <form:form action="AddCustomerToDB" method="post" modelAttribute="Sign">
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <form:input id="user_name" type="text" class="form-control" name="user_name" placeholder="Full_Name" path="Sign_username"/>
    <form:errors path="Sign_username"></form:errors>
    </div>
    <br>

    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <form:input id="email" type="text" class="form-control" name="email" placeholder="Email" path="Sign_Email"/>
    <form:errors path="Sign_Email"></form:errors>
    </div>
    <br>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <form:input id="password" type="password" class="form-control" name="password" placeholder="Password" path="Sign_Pass"/>
      <form:errors path="Sign_Pass"></form:errors>
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
      <form:input id="password" type="password" class="form-control" name="password" placeholder="confirm_Password" path="Sign_confirm_Pass"/>
    <form:errors path="Sign_confirm_Pass"></form:errors>
    </div>
    <br>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
      <form:input id="date_of_birth" type="date" class="form-control" name="date_of_birth" placeholder="date_of_birth" path="Sign_Date"/>
    <form:errors path="Sign_Date"></form:errors>
    </div>
    <br>
	
<div class="input-group" style="width=50%;">
      <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
      <form:input id="address" type="text" class="form-control" name="address" placeholder="Address" path="Sign_Address"/>
    <form:errors path="Sign_Address"></form:errors>
    </div>
    <br>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <form:input id="mobile" type="text" class="form-control" name="mobile" placeholder="mobile_no." path="Sign_Mobile"/>
    <form:errors path="Sign_Mobile"></form:errors>
    </div>
    <br>
    <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Submit</button>
	

	</form:form>



