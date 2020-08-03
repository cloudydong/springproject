package kr.co.constant;

import java.util.Arrays;
import java.util.List;

import lombok.Getter;

public enum SnsUrlGroup {
	GOOGLE(Arrays.asList(SnsUrlType.GOOGLE_CLIENT_ID, SnsUrlType.GOOGLE_CLIENT_SECRET, SnsUrlType.GOOGLE_REDIRECT_URL)),
	NAVER(Arrays.asList(SnsUrlType.NAVER_CLIENT_ID, SnsUrlType.NAVER_CLIENT_SECRET, SnsUrlType.NAVER_REDIRECT_URL)),
	KAKAO(Arrays.asList());
	
	@Getter
	private List<SnsUrlType> list;
	
	SnsUrlGroup(List<SnsUrlType> list) {
		this.list = list;
	}
	
}
