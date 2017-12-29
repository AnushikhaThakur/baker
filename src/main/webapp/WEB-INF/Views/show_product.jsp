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
<h1> Displaying products</h1>
<table border="1">
	<tr>
<td><strong>Product_Id</strong></td>
<td><strong>Product_Category</strong></td>
<td><strong>Product_Name</strong></td>
<td><strong>Product_Image</strong></td>
		</tr> 

<c:forEach var="y" items="${Product_list}">
<tr>
<td>${ y.getProduct_Id()}</td>
<td>${ y.getProduct_Category()}</td>
<td><a href="product_details/${ y.getProduct_Id()}">${ y.getProduct_Name()}</a></td>
<td>

	${y.getProduct_Image()}
	<img src="${y.getProduct_Image()}">
</td>
<td><a href="DeleteProductFromDB/${y.getProduct_Id()}">delete</a></td>
		<td><a href="update_product/${y.getProduct_Id()}">update</a></td>
		<td><a href="link_items/${y.getProduct_Id()}">link items</a></td>
		</tr> 
</c:forEach>
</table>
		</body>
</html>
