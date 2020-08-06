package kr.co.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.domain.LoginDTO;
import kr.co.domain.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO{
	@Autowired
	private SqlSession session;
	private final String NS = "m.e.m";
	@Override
	public void insert(UserDTO dto) {
		session.insert(NS+".insert", dto);
	}
	@Override
	public UserDTO loginpost(LoginDTO login) {
		// TODO Auto-generated method stub
		return session.selectOne(NS+".loginpost", login);
	}
	@Override
	public UserDTO login(LoginDTO login) {
		// TODO Auto-generated method stub
		return session.selectOne(NS+".read", login);
	}
	
	
	

}
