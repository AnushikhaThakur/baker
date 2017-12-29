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
<h1> Displaying Categories </h1>
<table border="1">
<tr>
<td><strong>Category_Id</strong></td>
<td><strong>Category_Name</strong></td>
</tr> 

<c:forEach var="x" items="${catlist}">
<tr>
<td>${ x.getCategory_Id()}</td>
<td>${ x.getCategory_Name()}</td>
	<td><a href="DeletecategoriesFromDB/${x.getCategory_Id()}">Delete</a></td>
		<td><a href="update_categories/${x.getCategory_Id()}">Update</a></td>
</tr> 
</c:forEach>
</table>
</body>
</html>
