<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Update Product Page</h1>

 
  <form:form action="/project/UpdateProductToDB" method="post" modelAttribute="pro" enctype="multipart/form-data">
    <form:input type="hidden"  path="Product_Id"/>
    
<form:input type="text" placeholder="Enter product_name" path="Product_Name"/>
 <form:input type="text" placeholder="Enter product_category" path="Product_Category"/>
 <form:input type="file" placeholder="Enter product file"  path="file" />
  <input type="submit" value="Update"/>
</form:form>


</body>
</html>