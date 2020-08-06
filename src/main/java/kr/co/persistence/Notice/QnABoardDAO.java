package kr.co.persistence.Notice;

import java.util.List;

import kr.co.domain.LoginDTO;
import kr.co.domain.ServiceCenter.*;
import kr.co.domain.UserDTO;

public interface QnABoardDAO {

	void insert(QnABoardVO vo);

	QnaBoardPageTO<QnABoardVO> list(QnaBoardPageTO<QnABoardVO> to);

	QnABoardVO read(int bno);

	QnABoardVO updateUI(int bno);

	void update(QnABoardVO vo);

	void increaseViewcnt(int bno);

	void delete(int bno);

	List<QnABoardVO> searchlist(String searchType, String keyword);

	void deleteByBno(int bno);

	UserDTO loginpost(LoginDTO login);
	

}
