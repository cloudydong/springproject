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
  div.polaroid {
  text-align: center;
  width: 20%;
  background-color: white;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-bottom: 25px;
  }
  div.contained {
  text-align: center;
  padding: 10px 20px;
  }
</style>
</head>

<body>
		<div class="col-sm-2"></div>

		<div class="sticky col-sm-8">

			<nav class="navbar navbar-inverse">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <a class="navbar-brand" href="ProductList">ShoppingMallName</a>
			    </div>
			    <ul class="nav navbar-nav">
			      <li><a href="#">Page 1</a></li>
			      <li><a href="#">Page 2</a></li>
			      <li><a href="#">Page 3</a></li>
			    </ul>
			  </div>
			</nav>
		
			<div class="row1">
				<div class="col-sm-2"></div>
				<div class="col-sm-7" style="padding-right: 0">
		    		<input id="search" type="text" class="form-control" placeholder="Search">
		    	</div>
		    	<div class="col-sm-1" style="padding-left: 0">
		      		<button class="btn btn-success btn-block" type="button" onclick="loadDoc(search.value);">Go</button>
		      	</div>	  
		      	<div class="col-sm-2"></div><br>
		    </div>
		    
		</div>
		
		<div class="text-center">
			<h1 id="no"></h1>
			<h1 id="ne"></h1>
		</div>
		
		<div class="container" id="container">
			<div class="row">
	
				<div class="col-sm-4">
					<div class="card">
						<div class="card-body">
							<div class="text-center" style="margin: auto">
								<div id="image"></div>
							</div>
						</div>
					</div>
				</div>
	
				<div class="col-sm-2"></div>
	
				<div class="col-sm-4">
					<div class="card">
						<div class="card-body">
							<h2 id="pname"></h2>   
							<br>
							<h1 id="price"></h1>
						</div>
					</div>
				</div>
			</div>
		</div>

</body>

<script type="text/javascript">

		function loadDoc(value = '${searchValue}') {
			let req = new XMLHttpRequest();
			req.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					//console.log(this);
					//console.log(this.response);
					myFunction(this);
				}
			};
			req.open("GET", 
					 "https://thingproxy.freeboard.io/fetch/https://openapi.11st.co.kr/openapi/OpenApiService.tmall?key=4a972a13f9e22b164bbe473d226d2dd3&apiCode=ProductSearch"
					 +"&keyword=" + value
					 ,true);
			req.send();
		}
	
	function myFunction(xml) {
		let i;
		let xmlDoc = xml.responseXML;

		let product = xmlDoc.getElementsByTagName("Product"); //확인됨

		let container = document.getElementById("container");

		let str = "";

		let BuySatisfy = xmlDoc.getElementsByTagName("BuySatisfy")[0].firstChild.data;

		let SalePrice = xmlDoc.getElementsByTagName("SalePrice")[0].firstChild.data;

		let image1 = xmlDoc.getElementsByTagName("ProductImage300")[0].firstChild.data;
		
		if(product.length == 0){ //검색결과 없을때
			document.getElementById("no").innerHTML = "'"+search.value+"'"+" 에대한 검색결과가 없습니다";
			document.getElementById("ne").innerHTML = "새로고침 하거나 다시 검색하세요";
		}

		for (i = 0; i < product.length; i++) {

			let code = xmlDoc.getElementsByTagName("ProductCode")[i].firstChild.data;
			
			let pname = xmlDoc.getElementsByTagName("ProductName")[i].firstChild.data;
			//document.getElementById("pname").innerHTML = pname;

			let price = xmlDoc.getElementsByTagName("ProductPrice")[i].firstChild.data;
			//document.getElementById("price").innerHTML = price;

			let image = xmlDoc.getElementsByTagName("ProductImage200")[i].firstChild.data;
			//var img = document.createElement("img"); 
			//img.setAttribute("src", image);
			//document.getElementById("image").append(img);
			
			 str += '<div class="row">' 

					+ '<div class="polaroid" id="image">'
						+ '<img src="'+image+'">' 
						
						 + '<div class="contained">'
							+ '<p id="pname"><a href=ProductInfo?'
							+ 'ProductCode='+code+'&ProductImage300='+image1+''
							+ '&BuySatisfy='+BuySatisfy+'&SalePrice='+SalePrice+'&ProductPrice='+price+''
							+ '">'
							+ pname + '</a></p>'
							+ '<h4 id="price">'
							+ price + '원</h4>' 
						 + '</div>'
						 
					+ '</div>'
					
				+ '</div>';
		}
		container.innerHTML = str;
	}

	document.addEventListener('DOMContentLoaded', () => {
		//console.log('DOMContentLoaded !!');
		loadDoc();

		let search = document.getElementById('search');
		// console.log('search.value', search.value);
		
		search.addEventListener("keyup", event => { //검색창에 엔터 키 입력시 검색 시작 기능
		  if (event.keyCode === 13) {
			  //console.log('엔터입력!!', event.keyCode);
			  loadDoc(search.value);
		  }
		});
	});
</script>


</html>