<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
div.sticky {
  overflow: auto;
  position: -webkit-sticky;
  position: sticky;
  top: 0;
  background-color: yellowgreen;
  padding: 30px;
  font-size: 20px;
  z-index: 1; 
  } 
</style>
</head>
<body>
<div class="col-sm-2"></div>

	<div class="sticky col-sm-8">
		
			<nav class="navbar navbar-inverse">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <a class="navbar-brand" href="productList">ShoppingMallName</a>
			    </div>
			    <ul class="nav navbar-nav">
			      <li><a href="#">Page 1</a></li>
			      <li><a href="#">Page 2</a></li>
			      <li><a href="#">Page 3</a></li>
			    </ul>
			  </div>
			</nav>
			
			<div class="row" >
			
				<div class="col-sm-2"></div>
				
				<div class="col-sm-7" style="padding-right: 0">
		    		<input id="search" type="text" class="form-control" placeholder="Search">
		    	</div>
		    	
		    	<div class="col-sm-1" style="padding-left: 0">
		      		<a href="productList?searchValue="><button class="btn btn-success btn-block" type="button">Go</button></a>
		      	</div>	  
		      	
		      	<div class="col-sm-2"></div><br>
		      	
		    </div>
		    
		</div>
		
  <div class="col-sm-2"></div><br>

</body>
</html>