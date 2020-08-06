package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.LoginDTO;
import kr.co.domain.UserDTO;
import kr.co.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService{
	@Inject
	private UserDAO userDao;

	@Override
	public void insert(UserDTO dto) {
		userDao.insert(dto);
		
	}

	@Override
	public UserDTO loginpost(LoginDTO login) {
		
		return userDao.loginpost(login);
	}

	@Override
	public UserDTO login(LoginDTO login) {
		// TODO Auto-generated method stub
		return userDao.login(login);
	}

	}
	

