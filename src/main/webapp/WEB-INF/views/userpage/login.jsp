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
body{
background-image:url(image/sky.png);

}
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
<form action = "/userpage/loginpost" method = "post">
<div class="form-group">
	<label for= "id">ID:</label>
	<input name ="id" class = "form-control"><br>
</div>

<div class="form-group">
	<label for = "pw">pw</label>
	<input class ="form-control" name = "pw"><br>
</div>

	<button type="submit" class ="btn btn-default">login</button>
</form>
</div>
</body>
</html>