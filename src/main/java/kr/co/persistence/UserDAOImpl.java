package kr.co.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.User;
import kr.co.dto.LoginDTO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession session;

	private static final String NS = "u.s.r";
	private static final String LOGIN = NS + ".login";
	private static final String KEEP_LOGIN = NS + ".keepLogin";
	private static final String CHECK_LOGIN_BEFORE = NS + ".checkLoginBefore";
	private static final String GET_BY_SNS_NAVER = NS + ".getBySnsNaver";
	private static final String GET_BY_SNS_GOOGLE = NS + ".getBySnsGoogle";

	@Override
	public User login(LoginDTO dto) throws Exception {
		return session.selectOne(LOGIN, dto);
	}

	@Override
	public void keepLogin(String uid, String sessionId, Date expire) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("uid", uid);
		paramMap.put("sessionkey", sessionId);
		paramMap.put("sessionlimit", expire);
		session.update(KEEP_LOGIN, paramMap);
	}

	@Override
	public User checkLoginBefore(String loginCookie) {
		return session.selectOne(CHECK_LOGIN_BEFORE, loginCookie);
	}

	@Override
	public User getBySns(User snsUser) {
		return null;
	}

}
