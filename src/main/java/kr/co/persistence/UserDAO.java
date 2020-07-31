package kr.co.persistence;

import java.util.Date;

import kr.co.domain.User;
import kr.co.dto.LoginDTO;

public interface UserDAO {

	User login(LoginDTO dto) throws Exception;

	void keepLogin(String uid, String id, Date expire);

	User checkLoginBefore(String loginCookie);

	User getBySns(User snsUser);
}
