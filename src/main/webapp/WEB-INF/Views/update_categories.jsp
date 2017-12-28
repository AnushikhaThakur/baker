<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Update Category Page</h1>

 
  <form:form action="/project/UpdateCategoryToDB" method="post" modelAttribute="cat">
    <form:input type="hidden"  path="Category_Id"/>
   <form:input type="text"  placeholder="Enter Name" path="Category_Name"/>
  <input type="submit" value="Update"/>
</form:form>


</body>
</html>