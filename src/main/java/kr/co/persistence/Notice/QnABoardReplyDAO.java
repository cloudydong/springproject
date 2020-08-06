package kr.co.persistence.Notice;

import java.util.List;

import kr.co.domain.LoginDTO;
import kr.co.domain.ServiceCenter.*;
import kr.co.domain.UserDTO;

public interface QnABoardReplyDAO {

	List<QnABoardReplyVO> list(int bno);

	int insert(QnABoardReplyVO vo);

	int update(QnABoardReplyVO vo);

	int delete(QnABoardReplyVO vo);

	void deleteByBno(int bno);


	

}
