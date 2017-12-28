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
<h1> Displaying product Page</h1>
<table border="1">
<c:forEach var="z" items="${Item_list}">
<tr>
<td>${ z.getItem_Id()}</td>
<td>${ z.getItems_Category()}</td>
<td>${ Z.getItem_Name()}</td>
<td>${ z.getItem_Price()}</td>
<td>${ z.getContainsEggOrEggless()}</td>
<td><a href="DeleteItemsFromDB/${z.getItem_Id()}">delete</a></td>
		<td><a href="update_items/${z.getItem_Id()}">update</a></td>
		
		</tr> 
</c:forEach>
</table>
		</body>
</html>