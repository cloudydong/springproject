package kr.co.persistence;

import kr.co.domain.UsersDTO;

public interface UsersDAO {

	UsersDTO readUser(String userId);

	void createUser(String userId);

	void updateName(UsersDTO dto);

	Integer getU_noById(String userId);
	
}
