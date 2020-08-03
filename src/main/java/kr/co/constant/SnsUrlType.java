package kr.co.constant;

public enum SnsUrlType {
	GOOGLE_CLIENT_ID("623303515879-49jko2pmshcjll86v28smkqc3pf3be9g.apps.googleusercontent.com"),
	GOOGLE_CLIENT_SECRET("LQ8DEeFpJPFWAqD67J8dexyZ"),
	GOOGLE_REDIRECT_URL("http://localhost:8089/users/auth/google/callback"),
	GOOGLE_PROFILE_URL("https://www.googleapis.com/plus/v1/people/me"),
	
	NAVER_CLIENT_ID("zXOm_uGtKBOA_ugnwdwz"),
	NAVER_CLIENT_SECRET("cdGoI1WGbl"),
	NAVER_REDIRECT_URL("http://localhost:8089/users/auth/naver/callback"),
	NAVER_ACCESS_TOKEN("https://nid.naver.com/oauth2.0/token?grant_type=authorization_code"),
	NAVER_AUTH("https://nid.naver.com/oauth2.0/authorize"),
	NAVER_PROFILE_URL("https://openapi.naver.com/v1/nid/me"),
	
	KAKAO_CLIENT_ID("75bf355f857b2bcb55c29e0b30f71697"),
	KAKAO_CLIENT_SECRET("2mOceS5FrTPwBQspPF24yrkGxFWROrru"),
	KAKAO_REDIRECT_URL("http://localhost:8089/auth/kakao/callback"),
	KAKAO_AUTH("https://kauth.kakao.com/oauth/authorize"),
	KAKAO_PROFILE_URL("https://kauth.kakao.com/oauth/token");
	private String url;
	
	SnsUrlType(String url) {
		this.url = url;
	}

	public String getUrl() {
		return url;
	}

}
