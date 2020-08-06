package kr.co.service.Notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.domain.ServiceCenter.QnaBoardPageTO;
import kr.co.domain.ServiceCenter.OneToOne.OneToOneVO;
import kr.co.persistence.Notice.OneToOneDAO;

@Service
public class OneToOneSerivceImpl implements OneToOneSerivce{
	@Autowired
	private OneToOneDAO odao;

	@Override
	public void insert(OneToOneVO vo) {
		// TODO Auto-generated method stub
		odao.insert(vo);
	}

	@Override
	public QnaBoardPageTO<OneToOneVO> list(QnaBoardPageTO<OneToOneVO> to) {
		// TODO Auto-generated method stub
		return odao.list(to);
	}
	



}
