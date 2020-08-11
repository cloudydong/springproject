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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.row{
margin : 100px

}

</style>
</head>
<body>
<%@ include file = "/WEB-INF/views/header.jsp" %>
	<div class="container">

		<div class="row text-center">

			<h1>글쓰기</h1>

		</div>



		<div class="row">
			<form action="faqinsert" method="post">
				<div class="form-group">
					<label for="title">제목</label> 
					<input name="title" id="title"class="form-control">
				</div>
				<div class="form-group">
					<label for="writer">작성자</label> 
					<input name="writer" value="${loginUser.name}" id = "writer"class="form-control">
				</div>
				<div class="form-group">
					<label for="content">내용</label>
					<textarea class="form-control" id="content" rows="10" cols="100"  name="content"></textarea>
				</div>
			</form>			
			<div class="form-group">
				<button class="btn btn-danger" id="insertbtn">등록</button>
				<button class="btn btn-danger" id="listbtn">목록</button>
			</div>
			<script type="text/javascript">
				$(document).ready(function() {

					$("#insertbtn").click(function() {
						$("form").submit();

					});
				});
			</script>


		</div>
	</div>
</body>
</html>