package kr.co.auth;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class SnsLoginDTO {
	private String service;
	private String clientId;
	private String clientSecret;
	private String redirectUrl;
	
	public SnsLoginDTO(String service, String clientId, String clientSecret, String redirectUrl) {
		this.service = service;
		this.clientId = clientId;
		this.clientSecret = clientSecret;
		this.redirectUrl = redirectUrl;
	}
	
}
