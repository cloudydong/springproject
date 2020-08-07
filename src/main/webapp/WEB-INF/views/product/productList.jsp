<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD

<!-- <style type="text/css">
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
</style> -->


<title>Shoppers</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
<link rel="stylesheet" href="/resources/fonts/icomoon/style.css">

<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/resources/css/jquery-ui.css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">


<link rel="stylesheet" href="/resources/css/aos.css">

<link rel="stylesheet" href="/resources/css/style.css">

</head>

<body>
	<div class="site-wrap">
		<header class="site-navbar" role="banner">
			<div class="site-navbar-top">
				<div class="container">
					<div class="row align-items-center">
						


					</div>
				</div>
			</div>

<div class="row fixed-top">
			<div class="col-2"></div>
			<div class="col-8 top">
			

				<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
					<a class="navbar-brand" href="/product/productList">ShoppingMallName</a>
					<ul class="navbar-nav text-left">
						<li class="nav-item"><a class="nav-link" href="/"><span
								class="glyphicon glyphicon-home"></span></a></li>
						<li class="nav-item"><a class="nav-link" href="/users/login"><span
								class="icon icon-person"></span></a></li>
						<li class="nav-item"><a class="nav-link" href="#"><span
								class="icon icon-shopping_cart"></span> <span class="count">2</span></a>
						</li>
					</ul>
				</nav>

				<div class="row">
					<div class="col-2"></div>
					<div class="col-7" style="padding-right: 0">
						<input id="search" type="text" class="form-control"
							placeholder="Search">
					</div>
					<div class="col-1" style="padding-left: 0">
						<a href="productList?searchValue="><button
								class="btn btn-info btn-block" type="button">Go</button></a>
					</div>
					<div class="col-2"></div>
					<br>
				</div>
			</div>
			</nav>
		</div>


			</nav>

			

		</header>


		<!-- <div class="col-sm-2"></div>

		<div class="sticky col-sm-8">

			<nav class="navbar navbar-inverse">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <a class="navbar-brand" href="/product/productList">ShoppingMallName</a>
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
		</div> -->

		<!-- <div class="container" id="container">
			<div class="row">
=======
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>product</title>
</head>

<body>
<%@ include file = "/WEB-INF/views/header.jsp" %>
<header>


  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item active" style="background-image: url('https://i.pinimg.com/originals/3b/8a/d2/3b8ad2c7b1be2caf24321c852103598a.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <h3 class="display-4">First Slide</h3>
          <p class="lead">This is a description for the first slide.</p>
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://free4kwallpapers.com/uploads/originals/2019/05/18/firewatch-wallpaper.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <h3 class="display-4">Second Slide</h3>
          <p class="lead">This is a description for the second slide.</p>
        </div>
      </div>
      <!-- Slide Three - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://3.bp.blogspot.com/-pMP941Bbvw0/XD4zZMLijpI/AAAAAAAAAno/qYjUr5a_g54AY--4E9KM6FooxcYFnTF2ACKgBGAs/w0/minimalist-forest-river-art-1-4k.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <h3 class="display-4">Third Slide</h3>
          <p class="lead">This is a description for the third slide.</p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
  </div>
</header> <br>
<!-- Page Content
<section class="py-5">
  <div class="container">
    <h1 class="font-weight-light">Half Page Image Slider</h1>
    <p class="lead">The background images for the slider are set directly in the HTML using inline CSS. The images in this snippet are from <a href="https://unsplash.com">Unsplash</a>!</p>
  </div>
</section> -->

		<div class="container invisible" id="container">
		
			 <div class="row">
>>>>>>> 820caec777fb0c6d3b8fe10ebc3f71e1cdf1a461
	
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
							<h1 id="SalePrice"></h1>
						</div>
					</div>
				</div>
				
				<div class="sidebar">
					<p>hello</p>
				</div>
				
			</div>
<<<<<<< HEAD
		</div> -->

=======
			
		</div> 

		<div class="text-center">
			<h3 id="no"></h3>
			<h3 id="ne"></h3>
		</div>
>>>>>>> 820caec777fb0c6d3b8fe10ebc3f71e1cdf1a461
		
</body>
<%@ include file="/WEB-INF/views/footer.jsp"%>
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
		req.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
		req.send();
		}

		
	function myFunction(xml) {
		let i;
		let xmlDoc = xml.responseXML;

		let product = xmlDoc.getElementsByTagName("Product"); //확인됨

		let container = document.getElementById("container");

		document.getElementById("container").setAttribute("class", "container");

		//let price = xmlDoc.getElementsByTagName("ProductPrice")[0].firstChild.data;

		//let image1 = xmlDoc.getElementsByTagName("ProductImage300")[0].firstChild.data;
		
		container.innerHTML = '';
		
		if(product.length == 0){ //검색결과 없을때
			document.getElementById("no").innerHTML = "*"+search.value+"*"+" 에대한 검색결과가 없습니다";
			document.getElementById("ne").innerHTML = "새로고침 하거나 다시 검색하세요";
		} 

		let str = '';
		
		for (i = 0; i < product.length; i++) {

			let code = xmlDoc.getElementsByTagName("ProductCode")[i].firstChild.data;
			
			let pname = xmlDoc.getElementsByTagName("ProductName")[i].firstChild.data;
			//document.getElementById("pname").innerHTML = pname;

			let SalePrice = xmlDoc.getElementsByTagName("SalePrice")[i].firstChild.data;
			//document.getElementById("SalePrice").innerHTML = SalePrice;

			let image = xmlDoc.getElementsByTagName("ProductImage170")[i].firstChild.data;
			//var img = document.createElement("img"); 
			//img.setAttribute("src", image);
			//document.getElementById("image").append(img);

 			str += '<div class="card mb-5" style="width:200px; hight:400px;">'
					 + '<div id=image>'
				   		 + '<img class="card-img-top" src="'+image+'">'
				 	 + '</div>'
				    + '<div class="card-body" style="text-align: center">'
				      + '<p class="card-title" id="pname">'
					  + '<a href="productInfo?'
					  + 'ProductCode='+code+''
					  + '">'	  	  	
				      + pname + '</a></p>'
				      + '<h4 id="Saleprice" class="card-text">'
				      + SalePrice + '원</h4>'
				    + '</div>'
				  + '</div>';

		}
		container.innerHTML += '<div class="row d-flex justify-content-between mb-5">'+str+'</div>'; 
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