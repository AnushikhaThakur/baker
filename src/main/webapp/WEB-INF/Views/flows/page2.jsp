<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
             <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Baker's Hut</title>
  <c:import url="../headers.jsp"></c:import>
<style>
.img-responsive{
top: 1000px;

}
.col-sm-6 {
    border: 2px solid #DCDCDC;
    outline: #DCDCDC solid 15px;
    margin: auto;    
   
    text-align: left;
}
h4{
 line-height: 50%;
}
h5{
 line-height: 50%;
}
.btn {
    border: none; /* Remove borders */
    color: white; /* Add a text color */
    padding: 14px 28px; /* Add some padding */
    cursor: pointer; /* Add a pointer cursor on mouse-over */
}
.warning {background-color: #ff9800;}
.warning:hover {background: #e68a00;}

</style>  

<script type="text/javascript">
		var myApp = angular.module('myApp',[]);
	
		myApp.factory('CartService', ['$http', '$q', function($http, $q)
		{
			
			var target_url = 'http://localhost:8080/project/';
	 
    	return {
         
            updateAddresses: function(item){
            	
            	
                    return $http.post( target_url + 'updateAddresses', item)
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
				$scope.Sign_Address = '';
				$scope.billingaddress = '';
		        	
		        $scope.updateAddresses = function()
		        {
		        	$scope.data = { "Sign_Address" : $scope.Sign_Address , "billingaddress" : $scope.billingaddress };
		        	
		        	console.log( $scope.data );
		        	
		        	$CartService.updateAddresses( JSON.stringify( $scope.data ) )
		        	.then
		        	(
		        			function(response)
		        			{
		        				console.log(response);
		        				$scope.updated = response.status;
		        			window.setTimeout(function()
		        			{
		        	$scope.$apply($scope.updated='');
		        			},3000);
		        			
		        			}
		        			
		        			,
		        			 
		     	            function(errResponse)
		     	            {
		     	            	console.error('Error while Sending Data.');
		     	            } 
		        	);	
			
		    	
		        }
		        
		        
		        /* $CartService.getaddress().then(function(response)
		        		{
		        			console.log(response);
		        			$scope.data = response;
		        			for (var i = 0; i < $scope.data.length; i++) {
								try {
									$scope.Address = $scope.data[i].address;
									$scope.billingAddress = $scope.data[i].address;
								} catch (e) {
									console.log(e);
								}
							}
		        		},function(errResponse)
		        		{
		        			console.log('Error fetching Items');
		        		}); */
		        
			}]); 
		
		
			
		</script>

</head>
<body style="background-color:#DCDCDC;" ng-app="myApp" ng-controller="abc">
 <div class="container">
   <c:import url="../navbar4.jsp"></c:import><br><br>
   <div class="row" style="background-color:#FFFFF0;">
   <div class="col-sm-6" >
   <label>BILLING ADDRESS</label><br>
	<textarea rows="4" placeholder="Enter your billing Address" ng-model="billingaddress"></textarea><br><br><br><br><br>
	<button class="btn default"><a href="${flowExecutionUrl}&_eventId=takeMeToPage1" class="previous">&laquo; Previous</a></button>
	</div>
	<div class="col-sm-6">
	<label>ADDRESS</label><br>
	<textarea rows="4" placeholder="Enter your Address" ng-model="Sign_Address"></textarea><br><br>
	<input type="button" class="btn btn-info" value="Update" ng-click="updateAddresses()"/>  
	<div ng-show="updated=='updated'">
		<div ng-show="updated=='updated'" style="font-style: italic; font-weight: bold; font-size: 20px; font-family: Segoe UI, Tahoma, sans-serif;" class="alert alert-success">
		{{updated}}
		</div>
	</div>
<br><br>	
<button class="btn warning" ><a href="${flowExecutionUrl}&_eventId=takeMeToPage3" class="next">Done &raquo;</a></button>
	
	
	
	
	
	
	
	
	</div>
	



	
    
</div>

</body>
</html>
