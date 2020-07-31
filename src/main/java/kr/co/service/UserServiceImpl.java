package kr.co.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

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
}
