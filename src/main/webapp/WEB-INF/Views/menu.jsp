    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:import url="headers.jsp" />
<style>

#lightbox{
	
	padding: 10px;


	}
#lightboxDetails{
	font-size: 0.8em;
	padding-top: 0.4em;
	}	
#lightboxCaption{ float: left; }
#lightbox img{ border: none; clear: both;} 

a.terms-link {
  color: #6a5b48;
  font-size: 13px;
  text-decoration: underline;
}

a:hover.terms-link {
  color: #6a5b48;
  font-size: 13px;
  text-decoration: none;
}
</style>
</head>
<body>
<div class="container">
<c:import url="navbar2.jsp" />
<!--<c:forEach items="${Item_data.keySet()}" var="x">

	<h1>${x}</h1>

	<c:forEach var="p" items="${Item_data.get(x)}">
	
		<h1>${p.getProduct_Name()}</h1>
	
	</c:forEach>

	<hr>

</c:forEach> -->

<div class="col-md-2" style="background-color:#DCDCDC;"></div>
<div class="col-md-8">
<div class="table-responsive">
<c:forEach items="${Item_data.keySet()}" var="x">
<center><div style="font-size:500% ;font-family: Monotype Corsiva, Times, serif;">${x}</div></center>

<c:forEach var="p" items="${Item_data.get(x)}">
                       
<div class="table stripped table-hover mainTR cake">
<div class="tbody">
<div class="mainTR row" id="4">

<div class="col-md-2">
<div class="media">
<a class="example-image-link"  href="#lighbox">
<img id="lightbox" alt="${p.getProduct_Name()}" title="${p.getProduct_Name()}" class="popimg  media-object example-image" src="${p.getProduct_Image()}" style="width: 110px; height: 86px;"  />
</a>
</div>
</div>
<div class="col-md-10">
<form action="de"  method="post">
<table class="table table-hover ">

<tr>
<th colspan="4"><a href="#" >${p.getProduct_Name()}</a></th>
<%
if (request.isUserInRole("ADMIN"))
						{
							%>


<td><a href="update_product/${p.getProduct_Id()}">
          <span class="glyphicon glyphicon-pencil"></span>
        </a></td><td> <a href="DeleteProductFromDB/${p.getProduct_Id()}">
          <span class="glyphicon glyphicon-remove" style="color:red;"></span>
        </a>
</td><td><button type="button" class="btn btn-default btn-sm">
      <a href="link_items/${p.getProduct_Id()}"><span class="glyphicon glyphicon-plus"></span> link-Items
       </a> </button>
      </td>
 <%
						}
        %>


</tr>
<c:forEach var="q" items="${p.getSubProducts()}">
<tr>
<td class="col-sm-6 col-md-6">
${q.getItem_Name()}</td>
<td class="col-sm-2 col-md-2 text-center">
INR ${q.getItem_Price()}
</td>


<%
if (request.isUserInRole("ADMIN"))
						{
							%>




<td class="col-sm-1 col-md-1 text-center"><a href="update_items/${q.getItem_Id()}">
          <span class="glyphicon glyphicon-pencil"></span>
        </a>
 </td>
<td class="col-sm-1 col-md-1">
 <a href="DeleteItemsFromDB/${q.getItem_Id()}">
          <span class="glyphicon glyphicon-remove" style="color:red;"></span>
        </a>
 </td>
 <%
						}
        %>

<td class="col-sm-1 col-md-1"><a href="product_details1/${ q.getItem_Id()}/${q.getPid()}">
<span class="glyphicon glyphicon-shopping-cart addCardBox"  aria-hidden="true" data-option="NA" id="4"></span>
</a></td>

</tr>
</c:forEach>
</table></form></div></div></div></div></c:forEach></c:forEach></div></div>
<div class="col-md-2" style="background-color:#DCDCDC;"></div>



</div>


</body>
</html>