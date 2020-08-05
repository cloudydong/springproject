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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
body{
padding-top: 180px;
}
div.top {
  background-color: yellowgreen;
  padding: 30px;
  } 
</style>
</head>
<body>

	<div class="row fixed-top">
		<div class="col-2"></div>
		<div class="col-8 top">
				  
		  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		  <a class="navbar-brand" href="productList">ShoppingMallName</a>
		  <ul class="navbar-nav">
		    <li class="nav-item">
		      <a class="nav-link" href="#">Link 1</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="#">Link 2</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="#">Link 3</a>
		    </li>
		  </ul>
		</nav>
		
		<div class="row">
			<div class="col-2"></div>
			<div class="col-7" style="padding-right: 0">
	    		<input id="search" type="text" class="form-control" placeholder="Search">
	    	</div>
	    	<div class="col-1" style="padding-left: 0">
	      		<a href="productList?searchValue="><button class="btn btn-success btn-block" type="button">Go</button></a>
	      	</div>	  
	      	<div class="col-2"></div><br>
	    </div>
	    </div>
	</div>
	
  	<div class="col-2"></div>

</body>
</html>