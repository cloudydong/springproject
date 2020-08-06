package kr.co.persistence.Notice;

import kr.co.domain.ServiceCenter.QnaBoardPageTO;
import kr.co.domain.ServiceCenter.OneToOne.OneToOneVO;

public interface OneToOneDAO {

	void insert(OneToOneVO vo);

	QnaBoardPageTO<OneToOneVO> list(QnaBoardPageTO<OneToOneVO> to);

}
