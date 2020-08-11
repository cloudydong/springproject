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
</head>
<body>

	
	<div class="container">
		<div class="row text-center">
			<h1>FAQ</h1>
		</div>
		<div class="row">
			<div class="form-group">
				<label for="title">제목</label> <input readonly value="${vo.title}"
					class="form-control">
			</div>
			<div class="form-group">
				<label for="writer">작성자</label> <input readonly value="${vo.writer}"
					class="form-control">
			</div>
			<div class="form-group">
				<label for="content">내용</label>
				<textarea readonly rows="5" class="form-control">${vo.content}</textarea>
			</div>
			

				
			

	<div class="row">
	
			<c:if test="${sessionScope.loginUser.name == vo.writer}">
			<div class="form-group">
				<button class="btn btn-warning" id="update">수정</button>
				<button class="btn btn-primary" id="delete">삭제</button>
			</div>
			</c:if>
			
			
				<button class="btn btn-danger" id="list">목록</button>

		</div>
		<!-- class = row -->


		<div class="row">
		
			<div id="myCollapse" class="collapse">

				<div class="form-group">
					<label for="replyer">작성자</label> <input class="form-control"
						id="replyer">
				</div>
				<div class="form-group">
					<label for="replytext">내용</label> <input class="form-control"
						id="replytext">
				</div>
				<div class="form-group">
					<button id="replyInsertBtn" class="btn btn-primary">댓글 등록</button>
				</div>



			</div>

			</div>
		</div>
		<!-- class = row -->


		<div class="row">
			<div data-backdrop="static" id="myModal" class="modal fade"
				tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-rno">rno 데이터</h4>
						</div>
						<div class="modal-body">
							<p class="modal-replyer">홍길동</p>
							<input value="댓글내용입니다." class="modal-replytext" />
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-warning modal-update-btn"
								data-dismiss="modal">댓글 수정</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->


		</div>


	

	</div>
	</div>
	
	
	
	<!-- class = container -->

	<script type="text/javascript">
		var bno = ${vo.bno};

		
		getList(bno);

		$(document).ready(function() {
			
			



			
			$("#replies").on("click", ".replymodify", function() {
				var rno = $(this).attr("data-rno");
				var replyer = $(this).attr("data-name");
				var replytext = $(this).prev().text();

				$(".modal-rno").text(rno);
				$(".modal-replyer").text(replyer);
				$(".modal-replytext").val(replytext);
				$("#myModal").modal("show");

			});

			$("#replies").on("click", ".replydelete", function() {
				var rno = $(this).attr("data-rno");
				$.ajax({

					type : 'delete',
					url : "/replies",
					headers : {
						"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "DELETE"
					},
					dataType : 'text',
					data : JSON.stringify({
						rno : rno

					}),
					success : function(result) {
						getList(bno);
					}
				});

			});

			$(".modal-update-btn").click(function() {

				var rno = $(".modal-rno").text();
				var replytext = $(".modal-replytext").val();

				$.ajax({
					type : 'put',
					url : "/replies/" + rno,
					headers : {
						"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "PUT"
					},
					dataType : 'text',
					data : JSON.stringify({
						replytext : replytext
					}),
					success : function(result) {
						if (result === "success") {
							getList(bno);
						}
					},

				});

			});

			$("#replyInsertBtn").click(function() {
				

				var replyer = $("#replyer").val();
				var replytext = $("#replytext").val();
				
				$.ajax({

					type : 'post',

					url : '/replies',

					headers : {

						"Content-Type" : "application/json",

						"X-HTTP-Method-Override" : "POST"

					},

					dataType : "text",

					data : JSON.stringify({

						

						bno : bno,


						replyer : replyer,

						replytext : replytext,

						

						
					}),

					success : function(result) {
						$("#replyer").val("");
						$("#replytext").val("");

						getList(bno);

					},

					error : function(request, status, error) {

						console.log(error);

					}
				});
					


					});

			

			$("#reply_form").click(function() {
				$("#myCollapse").collapse("toggle");

			});
			$("#update").click(function() {
				location.assign("/userpage/faqupdate/${vo.bno}");

			});
			$("#delete").click(function() {
				location.assign("/userpage/faqdelete/${vo.bno}")

			});

			$("#list").click(function() {
				location.assign("/userpage/faq")

			});
		});

		function getList(bno) {

			var str = '';

			$.getJSON("/replies/all/" + bno,
							function(data) {

								for (var i = 0; i < data.length; i++) {
									str += '<div class="panel panel-success"><div class="panel-heading"><span>rno:'
											+ data[i]["rno"]
											+ '</span>,<span>작성자: '
											+ data[i]["replyer"]
											+ '</span><span class="pull-ligth">'
											+ data[i]["updatedate"]
											+ '</span></div><div class="panel-body"><p>'
											+ data[i]["replytext"]
											+ '</p><button data-name="'+data[i]["replyer"]+'"data-rno="'+data[i]["rno"]+'"class= "btn btn-warning replymodify">수정</button><button data-rno='+data[i]["rno"]+' class= "btn btn-warning btn replydelete">삭제</button></div></div>;'

								}
								$("#replies").html(str);

							});

		}
	</script>
</body>
</html>