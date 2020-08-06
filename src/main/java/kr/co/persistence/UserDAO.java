package kr.co.persistence;

import kr.co.domain.LoginDTO;
import kr.co.domain.UserDTO;

public interface UserDAO {

	 void insert(UserDTO dto);

	UserDTO loginpost(LoginDTO login);

	UserDTO login(LoginDTO login);

	
	
	

}
