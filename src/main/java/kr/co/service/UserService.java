package kr.co.service;

import java.util.Date;

import kr.co.domain.User;
import kr.co.dto.LoginDTO;

public interface UserService {
	User login(LoginDTO dto) throws Exception;

	void keepLogin(String uid, String id, Date expire);

	User checkLoginBefore(String value);

	User getBySns(User snsUser);
}
