package kr.co.auth;

import java.util.Iterator;

import org.apache.commons.lang3.StringUtils;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

import kr.co.domain.User;

public class SNSLogin {
	private OAuth20Service oauthService;
	private SnsValue sns;
	
	public SNSLogin(SnsValue sns) {
		this.oauthService = new ServiceBuilder(sns.getClientId())
				.apiSecret(sns.getClientSecret())
				.callback(sns.getRedirectUrl())
				.scope("userinfo.email")
				.build(sns.getApi20Instance());
		
		this.sns = sns;
	}
	
	public String getNaverAuthURL() {
		return this.oauthService.getAuthorizationUrl();
	}

	public User getUserProfile(String code) throws Exception {
		// code로 토큰 받기
		OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
		// 리소스서버에 정보 요청 get방식 응답결과 response
		OAuthRequest request = new OAuthRequest(Verb.POST, this.sns.getProfileUrl());
		oauthService.signRequest(accessToken, request);
		Response response = oauthService.execute(request);
		
		String body = response.getBody();
		System.out.println("==================\n" + body + "\n==================");
		User user = new User();
		
		ObjectMapper mapper = new ObjectMapper();
		JsonNode rootNode = mapper.readTree(body);
		if (this.sns.isGoogle()) {
			System.out.println(rootNode.asText());
//			String id = rootNode.get("id").asText();
//			}
		} else if (this.sns.isNaver()) {
			System.out.println(rootNode.asText());
			JsonNode resNode = rootNode.get("response");
			System.out.println("responseNode: "+resNode);
		}
		
		return user;
	}

}
