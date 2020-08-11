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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.row{
margin:150px

}



</style>
</head>

<body>

<%@ include file = "/WEB-INF/views/header.jsp" %>


	<div class="container">
		<div class="row text-center">
			<h1>공지사항</h1>
			</div>
		<div class="row">
			<table class="table">
				<thead>
					<tr>
						<th class="th-center">글번호</th>
						<th class="th-center" style="width: 50%">제목</th>
						<th class="th-center">작성자</th>
						<th class="th-center">작성일</th>
						<th class="th-center">조회수</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${list}" var="dto">
						<tr>
							<td>${dto.bno}</td>
							<td><a href="/userpage/Noticeboardread/${dto.bno}">${dto.title}</a></td>
							<td>${dto.writer}</td>
							<td>${dto.regDate}</td>
							<td>${dto.viewcnt}</td>

						</tr>

					</c:forEach>

				</tbody>

			</table>
		</div>
	
	
	</div>
		<!-- class = row -->
		<div class="row text-center">
			<nav aria-label="Page navigation">
				<ul class="pagination">
					<li><a href="/userpage/FAQ?curPage=${to.curPage > 1? to.curPage-1 : 1}" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>
					<c:forEach begin ="${to.beginPageNum}" end = "${to.stopPageNum}" var = "page">
					<li class = "${to.curPage == page?'active' :''}"><a href="userpage/FAQ?curPage=${page}">${page}</a>
					</c:forEach>
					
					<li><a href="userpage/FAQ?curPage=${to.curPage < to.totalPage ? to.curPage+1 : to.totalPage}"aria-label="Next"> 
						<span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>

</body>
</html>