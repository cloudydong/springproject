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
		Integer u_no = session.selectOne(NS + ".getUno");
		UsersDTO dto = new UsersDTO(u_no, userId, null);
		session.insert(NS + ".create", dto);
	}

	@Override
	public void updateName(UsersDTO dto) {
		session.update(NS + ".updateName", dto);
	}

	@Override
	public Integer getU_noById(String userId) {
		return session.selectOne(NS + ".getU_noById", userId);
	}

}
