package kr.co.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.domain.UsersDTO;

@Repository
public class UsersDAOImpl implements UsersDAO {

	@Autowired
	private SqlSession session;

	private static final String NS = "users.domain";

	@Override
	public UsersDTO readUser(String userId) {
		return session.selectOne(NS + ".read", userId);
	}

	@Override
	public void createUser(String userId) {
		session.insert(NS + ".create", userId);
	}

	@Override
	public void insertName(String name) {
		session.insert(NS+ ".insertName", name);
	}

}
