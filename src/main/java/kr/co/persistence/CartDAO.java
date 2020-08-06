package kr.co.persistence;

import java.util.List;

import kr.co.domain.CartDTO;

public interface CartDAO {

	List<CartDTO> selectList();

	void insert(CartDTO dto);

	void delete(int c_no, Integer u_no);

	void update(CartDTO dto);

}
