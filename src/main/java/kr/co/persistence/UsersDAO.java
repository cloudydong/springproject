package kr.co.persistence;

import kr.co.domain.UsersDTO;

public interface UsersDAO {

	UsersDTO readUser(String userId);

	void createUser(String userId);

	void insertName(String name);

}
