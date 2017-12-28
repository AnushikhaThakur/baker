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
<c:forEach var="a" items="${customlist}">
<tr>
<td>${ a.getCustomize_Id()}</td>
<td><a href="product_details/${ a.getCustomize_Id()}">${ a.getYour_Name()}</a></td>
<td>${ a.getPhone_no()}</td>
<td>${ a.getEmail()}</td>
<td>${ a.getQuantity()}</td>
<td>${ a.getFlavour()}</td>
<td>${ a.getShape()}</td>
<td>${a.getEggless()}</td>
<td>${a.getDelivery_Date()}</td>
<td>${a.getPick()}</td>
<td>${a.getMessage()}</td>
<td>${a.getNotes()}</td>
<td><img src="${a.getCustomized_Image()}"></td>
<td><a href="DeleteCustomFromDB/${a.getCustomize_Id()}">delete</a></td>
		
		</tr> 
</c:forEach>
</table>
		</body>
</html>