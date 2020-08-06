package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.domain.CartDTO;
import kr.co.persistence.CartDAO;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDAO dao;

	@Override
	public List<CartDTO> selectList() {
		return dao.selectList();
	}

	@Override
	public void insert(CartDTO dto) {
		dao.insert(dto);
	}

	@Override
	public void delete(int c_no, Integer u_no) {
		dao.delete(c_no, u_no);
	}

	@Override
	public void update(CartDTO dto) {
		dao.update(dto);
	}
	
}
