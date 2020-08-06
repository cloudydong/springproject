package kr.co.persistence.Notice;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.ServiceCenter.QnaBoardPageTO;

import kr.co.domain.ServiceCenter.OneToOne.OneToOneVO;

@Repository
public class OneToOneDAOImpl implements OneToOneDAO{
	@Inject
	private SqlSession session;
	private final String NS = "b.o.a";

	@Override
	public void insert(OneToOneVO vo) {
		Integer bno = session.selectOne(NS + ".getBno");
		if (bno != null) {
			bno += 1;

		} else {
			bno = 1;
		}
		vo.setBno(bno);

		session.insert(NS + ".onetooneinsert", vo);

	}

	@Override
	public QnaBoardPageTO<OneToOneVO> list(QnaBoardPageTO<OneToOneVO> to) {
		
		RowBounds rowBounds = new RowBounds(to.getStartNum() - 1, to.getPerPage());
		List<OneToOneVO> list = session.selectList(NS + ".list", null, rowBounds);
		to.setList(list);

		Integer amount = session.selectOne(NS + ".getAmount");
		if (amount != null) {
			to.setAmount(amount);

		} else {
			to.setAmount(0);
		}
		return to;
	}

}
