<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<style type = "text/css">
body

.container{

	position: absolute;
	text-align: center;
	width: 300px;
	height:200px;
	top:50%;
	left:45%;
	margin:-200px 0 0 -50px;
	
	

}


</style>
<body>
<div class = "container">
<h1>new</h1>
<form action = "insert" method = "post">
<div class="form-group">
	<label for= "id">ID:</label>
	<input name ="id" class = "form-control"><br>
</div>
<div class="form-group">
	<label for = "name">Name</label>
	<input class ="form-control" name = "name"><br>
</div>
<div class="form-group">
	<label for ="age">Age</label>
	<input class ="form-control" type = "number" name = "age"><br>
</div>
	<button type="submit" class ="btn btn-default">가입하기</button>
</form>
</div>
</body>
	
</body>
</html>