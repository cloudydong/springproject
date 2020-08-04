<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
	<form role="form" action="/loginPost" method="post">
		<div class="box-body">
			<div class="form-group">
				<input type="text" id="u_id" value="user1"
					name="u_id" class="form-control" placeholder="User Email..." />
			</div>
		</div> <!-- .box-body -->
		
		<div class="box-footer">
		  <button type="submit" class="btn btn-primary">Sign In</button>
		</div>
	</form>
	
	<div class="text-center">
	   <a href="${ naver_url }"><img width="300" src="/resources/images/naver-login.png" alt="Naver Login" /></a>
	   <a href="${ kakao_url }"><img width="300" src="/resources/images/kakao_login.png" alt="Kakao Login" /></a>
	   <a href="${ google_url }"><img width="300" src="/resources/images/google-login.png" alt="Google Login" /></a>
	</div>
	
</html>