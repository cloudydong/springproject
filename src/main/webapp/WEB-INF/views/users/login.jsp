<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">로그인페이지</h5>
            <h5 class="card-title text-center">${ result }</h5>
            <form class="form-signin" action="/loginPost" method="post">
              <div class="form-label-group">
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                <label for="inputEmail">Email address</label>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
              <hr class="my-4">
              <h3 class="text-center">간편로그인</h3>
			  <div class="text-center" style="border-radius: 1rem;">
			    <a href="${ naver_url }"><img width="300" src="/resources/images/naver-login.png" alt="Naver Login" /></a>
			    <a href="${ kakao_url }"><img width="300" src="/resources/images/kakao_login.png" alt="Kakao Login" /></a>
			    <a href="${ google_url }"><img width="300" src="/resources/images/google-login.png" alt="Google Login" /></a>
			  </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>