<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>장바구니</title>
</head>
<body>
<section class="pt-5 pb-5">
  <div class="container">
    <div class="row w-100">
        <div class="col-lg-12 col-md-12 col-12">
            <h3 class="display-5 mb-2 text-center">장바구니</h3>
            <p class="mb-5 text-center">
                <i class="text-info font-weight-bold">${fn:length(list)} </i> 개가 장바구니에 담겼습니다</p>
            <table id="shoppingCart" class="table table-condensed table-responsive">
                <thead>
                    <tr>
                        <th style="width:60%">상품이름</th>
                        <th style="width:12%">가격</th>
                        <th style="width:10%">개수</th>
                        <th style="width:16%"></th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="dto">
                    <tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-md-3 text-left">
                                    <img src="${dto.pImage}" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                </div>
                                <div class="col-md-9 text-left mt-sm-2">
                                    <h4><a href="${dto.detailPageUrl}">${dto.pName}</a></h4>
                                    <p class="font-weight-light">${dto.sellerNick} &amp; ${dto.seller}</p>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price">${dto.pPrice}원</td>
                        <td data-th="Quantity">
                            <input type="number" class="form-control form-control-lg text-center" value="${dto.count}">
                        </td>
                        <td class="actions" data-th="">
                            <div class="text-right">
                                <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                                    <i class="fas fa-sync">💱</i>
                                </button>
                                <button class="btn btn-white border-secondary bg-white btn-md mb-2 delete-cart">🗑</button>
                            </div>
                        </td>
                    </tr>
                 </c:forEach>
                    <tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-md-3 text-left">
                                    <img src="https://via.placeholder.com/250x250/5fa9f8/ffffff" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                </div>
                                <div class="col-md-9 text-left mt-sm-2">
                                    <h4>Product Name</h4>
                                    <p class="font-weight-light">Brand &amp; Name</p>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price">$49.00</td>
                        <td data-th="Quantity">
                            <input type="number" class="form-control form-control-lg text-center" value="1">
                        </td>
                        <td class="actions" data-th="">
                            <div class="text-right">
                                <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                                    <i class="fas fa-sync"></i>
                                </button>
                                <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-md-3 text-left">
                                    <img src="https://via.placeholder.com/250x250/5fa9f8/ffffff" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                </div>
                                <div class="col-md-9 text-left mt-sm-2">
                                    <h4>Product Name</h4>
                                    <p class="font-weight-light">Brand &amp; Name</p>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price">$49.00</td>
                        <td data-th="Quantity">
                            <input type="number" class="form-control form-control-lg text-center" value="1">
                        </td>
                        <td class="actions" data-th="">
                            <div class="text-right">
                                <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                                    <i class="fas fa-sync"></i>
                                </button>
                                <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="float-right text-right">
                <h4>총 가격:</h4>
                <h1>$99.00</h1>
            </div>
        </div>
    </div>
    <div class="row mt-4 d-flex align-items-center">
        <div class="col-sm-6 order-md-2 text-right">
            <a href="/kakaopay" class="btn btn-primary mb-4 btn-lg pl-5 pr-5">결재하기</a>
        </div>
        <div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
            <a href="/product/productList">
                <i class="fas fa-arrow-left mr-2"></i>계속 쇼핑하기</a>
        </div>
    </div>
</div>
</section>
<script type="text/javascript">
	$(document).ready(function(){
		$(".delete-cart").on("click", function(){
			const c_no = $(this).prev().prev().text();
			$.ajax({
				type : 'POST',
				url : '/cart/delete/'+c_no,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : "text",
				data : JSON.stringify({
						rno : rno
				}),
				success : function(result){
						getList(bno);
				},
				error : function(requset, status, error){
						console.log(error);
				}
		})
		}
	}
</script>
</body>
</html>