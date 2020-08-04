package kr.co.service;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.constant.SnsUrlGroup;
import kr.co.domain.UsersDTO;
import kr.co.persistence.UsersDAO;

@Service
public class UsersServiceImpl implements UsersService{
	
	@Autowired
	private UsersDAO dao;

	@Override
	public UsersDTO readUser(String userId) {
		return dao.readUser(userId);
	}
	@Override
	public String createUserId(String snsName, String code) {
		SnsUrlGroup sns = SnsUrlGroup.valueOf(snsName.toUpperCase());
		try {
			String id = sns.getSnsUniqueId(code);
			String userId = snsName+id;
			return userId;
		} catch (IOException e) {
			throw new RuntimeException("snsName+id 실패");
		}
	}
	@Override
	public void createUser(String userId) {
		dao.createUser(userId);
	}
	@Override
	public void insertName(String name) {
		dao.insertName(name);
	}
}
