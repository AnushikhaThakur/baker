 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Baker's Hut</title>
  <c:import url="headers.jsp" />
<style>
body{
background-color:#DCDCDC;
}
#de{


padding: 20px 50px 80px;
}
.log{

padding: 25px 0px 25px;
background-color:#28a428 ;
color:white;
}
.out{border-style: groove;
border-color:#808080;
margin-top: 0px;
    margin-bottom: 100px;
    margin-right: 150px;
    margin-left: 150px;
background-color:white;
box-shadow: 0px 0px 40px #696969;
}
</style>


</head>
<body><div class="container-fluid"> 
<c:import url="navbar4.jsp" />
<div class="out">
<div class="log"><center><h4><span class="glyphicon glyphicon-lock"></span> Login</h4></center></div>
<div id="de">
<form action="login" method="POST" >
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email" name="email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter password" name="password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off">Login</span></button>
          </form></div></div></div>
</body>
</html>