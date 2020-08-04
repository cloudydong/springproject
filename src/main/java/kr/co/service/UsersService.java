package kr.co.service;

import kr.co.domain.UsersDTO;

public interface UsersService {

	UsersDTO readUser(String userId);

	String createUserId(String snsName, String code);

	void createUser(String userId);

	void insertName(String name);
	
}
