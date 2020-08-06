package kr.co.service.Notice;

import kr.co.domain.ServiceCenter.QnaBoardPageTO;
import kr.co.domain.ServiceCenter.OneToOne.OneToOneVO;

public interface OneToOneSerivce {

	void insert(OneToOneVO vo);

	QnaBoardPageTO<OneToOneVO> list(QnaBoardPageTO<OneToOneVO> to);

}
