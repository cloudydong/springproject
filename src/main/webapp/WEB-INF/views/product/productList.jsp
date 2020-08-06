<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>product</title>
<style type="text/css">
  hr {
    height: 0px;
    border: none;
    border-top: 1px solid black;
  }
  div.polaroid {
  text-align: center;
  width: 21%;
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
      <div class="carousel-item active" style="background-image: url('https://i.kym-cdn.com/entries/icons/facebook/000/027/475/Screen_Shot_2018-10-25_at_11.02.15_AM.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <h3 class="display-4">First Slide</h3>
          <p class="lead">This is a description for the first slide.</p>
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://res.cloudinary.com/teepublic/image/private/s--hMz0d2TZ--/c_crop,x_10,y_10/c_fit,w_1109/c_crop,g_north_west,h_945,w_1260,x_-76,y_-99/co_rgb:ffb81c,e_colorize,u_Misc:One%20Pixel%20Gray/c_scale,g_north_west,h_945,w_1260/fl_layer_apply,g_north_west,x_-76,y_-99/bo_0px_solid_white/t_Resized%20Artwork/c_fit,g_north_west,h_1054,w_1054/co_ffffff,e_outline:53/co_ffffff,e_outline:inner_fill:53/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_jpg,h_630,q_90,w_630/v1559034692/production/designs/4942585_0.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <h3 class="display-4">Second Slide</h3>
          <p class="lead">This is a description for the second slide.</p>
        </div>
      </div>
      <!-- Slide Three - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://1.bp.blogspot.com/-QqSQUJ0p7KI/Xhtu9JlTsKI/AAAAAAAATis/jtYArK7l3E0M3KCjexOFNNH7pGYhl5SEgCLcBGAsYHQ/w914-h514-p-k-no-nu/anime-sky-scenery-sunrise-uhdpaper.com-4K-4.2371-wp.thumbnail.jpg')">
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
</header>
<!-- Page Content
<section class="py-5">
  <div class="container">
    <h1 class="font-weight-light">Half Page Image Slider</h1>
    <p class="lead">The background images for the slider are set directly in the HTML using inline CSS. The images in this snippet are from <a href="https://unsplash.com">Unsplash</a>!</p>
  </div>
</section> -->

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
							<h1 id="SalePrice"></h1>
						</div>
					</div>
				</div>
			</div>
		</div> 

		<div class="text-center">
			<h3 id="no"></h3>
			<h3 id="ne"></h3>
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

		//let price = xmlDoc.getElementsByTagName("ProductPrice")[0].firstChild.data;

		//let image1 = xmlDoc.getElementsByTagName("ProductImage300")[0].firstChild.data;
		
		if(product.length == 0){ //검색결과 없을때
			document.getElementById("no").innerHTML = "*"+search.value+"*"+" 에대한 검색결과가 없습니다";
			document.getElementById("ne").innerHTML = "새로고침 하거나 다시 검색하세요";
		}

		for (i = 0; i < product.length; i++) {

			let code = xmlDoc.getElementsByTagName("ProductCode")[i].firstChild.data;
			
			let pname = xmlDoc.getElementsByTagName("ProductName")[i].firstChild.data;
			//document.getElementById("pname").innerHTML = pname;

			let SalePrice = xmlDoc.getElementsByTagName("SalePrice")[i].firstChild.data;
			//document.getElementById("SalePrice").innerHTML = SalePrice;

			let image = xmlDoc.getElementsByTagName("ProductImage200")[i].firstChild.data;
			//var img = document.createElement("img"); 
			//img.setAttribute("src", image);
			//document.getElementById("image").append(img);
			
			 str += '<div class="row">'
				 + '<div class="card" style="width:300px">'
					 + '<div id=image>'
				   		 + '<img class="card-img-top" src="'+image+'">'
				 	 + '</div>'
				    + '<div class="card-body">'
				      + '<p class="card-title" id="pname">'
					  + '<a href="productInfo?'
					  + 'ProductCode='+code+''
					  + '">'	  	  	
				      + pname + '</a></p>'
				      + '<h4 id="Saleprice" class="card-text">'
				      + SalePrice + '원</h4>'
				    + '</div>'
				  + '</div>'
				  + '</div>';


				  /* '<div class="row">' 

						+ '<div class="polaroid" id="image">'
							+ '<img src="'+image+'">' 
							
							 + '<div class="contained">'
								+ '<p id="pname"><a href="world2?'
								+ 'ProductCode='+code+''
								+ '">'
								+ pname + '</a></p>'
								+ '<h4 id="Saleprice">'
								+ SalePrice + '원</h4>' 
							 + '</div>'
							 
						+ '</div>'
						
				+ '</div>'; */

			 
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