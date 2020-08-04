package kr.co.service;

import java.io.IOException;
import java.util.Date;

import javax.inject.Inject;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;

import kr.co.constant.SnsUrlGroup;
import kr.co.domain.User;
import kr.co.dto.LoginDTO;
import kr.co.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;

	@Override
	public User login(LoginDTO dto) throws Exception {
		return dao.login(dto);
	}

	@Override
	public void keepLogin(String uid, String sessionId, Date expire) {
		dao.keepLogin(uid, sessionId, expire);
	}

	@Override
	public User checkLoginBefore(String loginCookie) {
		return dao.checkLoginBefore(loginCookie);
	}

	@Override
	public User getBySns(User snsUser) {
		return dao.getBySns(snsUser);
	}
	
	@Override
	public User getUser(String snsName, String code) {
		User user = null;
		SnsUrlGroup sns = SnsUrlGroup.valueOf(snsName.toUpperCase());
		try {
			String id = sns.getSnsUniqueId(code);
			String userId = snsName+id;
			user = new User(userId, null, null, null, null, null);
		} catch (IOException e) {
			return null;
		}
		return user;
	}
}
