package kr.co.service;

import kr.co.domain.LoginDTO;
import kr.co.domain.UserDTO;

public interface UserService {

	void insert(UserDTO dto);

	UserDTO loginpost(LoginDTO login);

	UserDTO login(LoginDTO login);





}
