<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
 <title>Baker's Hut</title>
  <c:import url="../headers.jsp" />
<style>
.img-responsive{
top: 1000px;
}
</style>  
<style>
 .foot {background: #aaa;color:white;
 -webkit-order:3;order:3;
 text-align:center;}
 </style>
 </head>
 <script type="text/javascript">
 
 
 var myApp = angular.module('myApp',[]);
	
		myApp.factory('CartService', ['$http', '$q', function($http, $q)
		{
			
			var target_url = 'http://localhost:8080/project/';
	 
    	return {
         
            removeItems: function(item){
            	
            	
                    return $http.post( target_url + 'removeFromCart')
                            .then(
                                    function(response){
                                        return response.data;
                                    }, 
                                    function(errResponse){
                                        console.error('Error while sending data');
                                        return $q.reject(errResponse);
                                    }
                              );
            }         ,
            
            	
    	
    };
 
}]);
		
		myApp.controller("abc",['$scope', 'CartService' ,function($scope , $CartService)
			{
				console.log('abc');
			
				$CartService.removeItems( )
		        	.then
		        	(
		        			function(response)
		        			{
		        				console.log(response);
		        
		        			},
		        			 
		     	            function(errResponse)
		     	            {
		     	            	console.error('Error while Sending Data.');
		     	            } 
		        	);	
			
		    			        
			}]); 
		
		
			
		</script>
 
<body ng-app="myApp" ng-controller="abc">

<div class="container-fluid" >
<div class="jumbotron text-xs-center">
  <h1 class="display-3">Thank You!</h1>
  <p class="lead"><strong>Please check your email</strong> for further instructions on how to complete your account setup.</p>
  <hr>
  <p>
    Having trouble? <a href="home">Contact us</a>
  </p>
  <p class="lead">
    <a class="btn btn-primary btn-sm" href="home" role="button">Continue to homepage</a>
  </p>
</div>
  <br>
<a href="${flowExecutionUrl}&_eventId=takeMeToPage2" class="previous">&laquo; Previous</a>
  </div>
</body>
</html>