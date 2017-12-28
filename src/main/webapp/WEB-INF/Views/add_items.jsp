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
<h1> ADD Items</h1>
<form:form action="AdditemsToDB" method="post" modelAttribute="item" >

<form:input type="text" placeholder="Enter Items_Category " path="Items_Category"/>
<form:input type="text" placeholder="Enter Item_Name" path="Item_Name"/>
<form:input type="text" placeholder="Enter Item_Price" path="Item_Price"/>
<form:input type="text" placeholder="ContainsEgg/Eggless" path="ContainsEggOrEggless"/>

<input type="submit" value="Add_Items">
</form:form>
</body>
</html>
