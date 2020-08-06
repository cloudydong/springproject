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
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">이름 없음</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="즐겨찾기">Home</a></li>
				<li><a href="#">MY PAGE</a></li>
				<li class="dropdown"><a href="#"class="dropdown-toggle" data-toggle="dropdown">고객센터<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="${empty login?'/users/login':'/userpage/FAQ'}">FAQ</a></li>
						<li><a href="${empty login?'/users/login':'/userpage/1to1'}">1:1문의하기</a></li>
						<li><a href="${empty login?'/users/login':'/userpage/noticelist'}">공지사항</a></li>
						</ul>
						</li>
	
					</ul>
				

	
		<ul class="nav navbar-nav navbar-right">
			<li><a href=${empty login? '/users/login':'logout'}>${empty login? '로그인':'로그아웃'}<span
					class="glyphicon glyphicon-user"></span></a></li>
			<li><a href="/userpage/insert"><span
					class="glyphicon glyphicon-log-in"></span> Sign up</a></li>
		</ul>
		
		</div>
	</nav>



</body>
</html>