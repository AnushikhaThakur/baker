<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
 <title>Baker's Hut</title>
  <c:import url="../headers.jsp"></c:import>
<style>
.img-responsive{
top: 1000px;

}
.col-sm-8 {
    border: 2px solid #DCDCDC;
    outline: #DCDCDC solid 15px;
    margin: auto;    
    padding: 20px;
    text-align: center;
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">

var myApp = angular.module('myApp',[]);

myApp.factory('CartService', ['$http', '$q', function($http, $q){
     
    var BASE_URL = 'http://localhost:8080/project/';
    
    
    return {
         
            fetchAllItemsInCart: function() {
                    return $http.post(BASE_URL+'getAllItemsInCart')
                            .then(
                                    function(response){
                                        return response.data;
                                    }, 
                                    function(errResponse){
                                        console.error('Error while fetching items');
                                        return $q.reject(errResponse);
                                    }
                            );
            }         ,
            removeFromCart: function(cartid) {
                return $http.post(BASE_URL+'removeFromCart',cartid)
                        .then(
                                function(response){
                                    return response.data;
                                }, 
                                function(errResponse){
                                    console.error('Error while fetching items');
                                    return $q.reject(errResponse);
                                }
                        );
        }
    };
 
}]);

myApp.controller('myCtrl',['$scope','CartService',function($scope,$CartService){
    
    console.log('Cart Controller');    
    
    $scope.data = [];
    
    $scope.sum = 0;
    
    $CartService.fetchAllItemsInCart().then(
           function(result) {
               $scope.data = result;
               console.log(result);
               for( var i = 0 ; i < $scope.data.length ; i++ )
               {
            	   console.log( parseFloat( $scope.data[i].cprice ) );
                   $scope.sum += parseFloat( $scope.data[i].cprice ) * parseInt( $scope.data[i].ccartquantity );
               
                   console.log( $scope.sum );
               }

           
           
           
           }
        );
    
    $scope.RemoveFromCart = function(cid)
    {
        $CartService.removeFromCart({"cid":cid}).then(
               function(result) {
                   console.log(result.message);
                   
                   if( result.message == 'deleted' )
                   {
                       $CartService.fetchAllItemsInCart().then(
                              function(result) {
                                  $scope.data = result;
                                  console.log(result);
                               }
                           );
                   }
                   else
                   {
                       alert('Deletion Failure');    
                   }
                }
            );

    }
    
}]);

</script>



 </head>
<body style="background-color:#DCDCDC;" ng-app="myApp" ng-controller="myCtrl"><div class="container">
  <c:import url="../navbar4.jsp"></c:import>
<br><br>
<div class="row" style="background-color:#FFFFF0;">
    <div class="col-sm-8">
      <table class="table">
    <thead>
      <tr>
        <th>MY CART</th>
        </tr>
    </thead>
    <tbody>
      
	  <tr ng-repeat="x in data">
        <td class="col-sm-2"><img id="lightbox" alt="not found" class="popimg  media-object example-image" src="{{x.cimage}}" style="width: 110px; height: 86px;"  /></td>
		<td class="col-sm-6" style="text-align:left;"><h4>{{x.cpname}}</h4><h6>{{x.ciname}}</h6><h6>Quantity :{{x.ccartquantity}}</h6><h6>INR {{x.cprice}} /piece</h6><h6>Total Amount INR {{ x.ccartquantity*x.cprice }}</h6><h4><input type="button"  class="btn btn-warning" value="Remove From Cart" ng-click="RemoveFromCart(x.cid)" /></h4></td>
		<td class="col-sm-4"><h4>Free Delivery in 3-4 Days.</h4></td>
      
	  </tr>
      
    </tbody>
  </table>
      <button class="btn default"><a href="menu" class="previous" >&laquo; < CONTINUE SHOPPING </a></button>
      <button class="btn warning"><a href="${flowExecutionUrl}&_eventId=takeMeToPage2" class="next">PLACE ORDER &raquo;</a></button>

    </div>
    
    <div class="col-sm-4">
	 <table class="table">
    <thead>
      <tr>
        <th>PRICE DETAILS</th>
        </tr>
    </thead>
    <tbody>
      
	  <tr >
        <td >Price (1 Item)</td>
		<td >INR {{sum}} </td>
		</tr>
      <tr >
        <td >Delivery Charges</td>
		<td style="color:#228B22;">FREE </td>
		</tr>
     
	 <tr >
	  <td style="color:#800000;"> <h3>Amount Payable</h3></td>
	  <td style="color:#800000;"> <h3>INR {{sum}}</h3></td>
	  </tr>
    </tbody>
  </table>
    </div>
  </div>



</div>
</body>






</html>