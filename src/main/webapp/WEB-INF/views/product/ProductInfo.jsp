<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>product</title>
<style type="text/css">
hr {
    height: 0px;
    border: none;
    border-top: 1px solid black;
   }
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
		
		
	<div class="container" id="container">
		<div class="row">

			<div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<br>
							<div id="image" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"></div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-sm-2"></div>

			<div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<h2 id="pname"></h2>  
						<div class="row">
							<div class="col-sm-6"><h2 id="SalePrice"></h2></div>
							<div class="col-sm-5"><h3 style="color: grey"><del id="price"></del></h3></div>
						</div>
						<div id="btnCart" class="btn btn-primary hidden"></div>
						<div id="btnBuy" class="btn btn-danger hidden"></div> 
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

<script type="text/javascript">

	function loadDoc(value = ${ProductCode}) {
		let req = new XMLHttpRequest();
		req.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				//console.log(this);
				//console.log(this.response);
				myFunction(this);
			}
		};
		req.open("GET", 
				 "https://thingproxy.freeboard.io/fetch/https://openapi.11st.co.kr/openapi/OpenApiService.tmall?key=4a972a13f9e22b164bbe473d226d2dd3&apiCode=ProductSearch&"
				+"keyword=" + value, 
				  true);
		req.send();
	}

	function myFunction(xml) {
		let xmlDoc = xml.responseXML;

		let image = xmlDoc.getElementsByTagName("ProductImage300")[0].firstChild.data;
		let img = document.createElement("img"); 
		img.setAttribute("src", image);
		document.getElementById("image").append(img); 

		var pname = xmlDoc.getElementsByTagName("ProductName")[0].firstChild.data;
		document.getElementById("pname").innerHTML = pname;

		let SalePrice = xmlDoc.getElementsByTagName("SalePrice")[0].firstChild.data;
		document.getElementById("SalePrice").innerHTML = SalePrice + "원";
		
		let price = xmlDoc.getElementsByTagName("ProductPrice")[0].firstChild.data;
		if(SalePrice != price){
			document.getElementById("price").innerHTML = price+ "원";
		}else{
			document.getElementById("price").setAttribute("class", "hidden");
		}

		document.getElementById("btnCart").innerHTML = "장바구니에 담기";
		document.getElementById("btnCart").setAttribute("class", "btn btn-primary");
		
		document.getElementById("btnBuy").innerHTML = "바로 구매하기";
		document.getElementById("btnBuy").setAttribute("class", "btn btn-danger");

	}

	document.addEventListener('DOMContentLoaded', () => {
		//console.log('DOMContentLoaded !!');
		loadDoc();

		var search = document.getElementById('search');
		// console.log('search.value', search.value);
		
		search.addEventListener("keyup", event => { //검색창에 엔터 키 입력시 검색 시작 기능
		  if (event.keyCode === 13) {
			  //console.log('엔터입력!!', event.keyCode);
			  //loadDoc(search.value);
			  document.location.href = "productList?searchValue="+search.value;
		  }
		});
	});

</script>
</html>