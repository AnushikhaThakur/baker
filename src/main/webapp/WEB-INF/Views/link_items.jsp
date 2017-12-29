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
<h1> pid == item id </h1>

<form action="${pageContext.request.contextPath}/LinkProductsWithCategory" method="post"> 

<input type="hidden" value="${catId}" name="catId">
<table border="1">
<c:forEach var="f" items="${linkjsp}">
<tr>
<td>${ f.getItem_Id()}</td>
<td>${ f.getItems_Category()}</td>
<td>${ f.getItem_Name()}</td>
<td>${ f.getItem_Price()}</td>
<td>${ f.getContainsEggOrEggless()}</td>
<td><a href="${pageContext.request.contextPath}/DeleteItemsFromDB/${f.getItem_Id()}">delete</a></td>
		<td><a href="${pageContext.request.contextPath}/update_items/${f.getItem_Id()}">update</a></td>
		<td><input type="checkbox" id="xyz" name="productitems" value="${f.getItem_Id()}"></td>
		</tr> 
</c:forEach>
</table>
<input type="submit" value="submit">
</form>
</body>
</html>
