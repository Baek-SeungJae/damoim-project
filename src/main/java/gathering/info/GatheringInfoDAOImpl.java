package gathering.info;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("GatheringInfoDAO")
public class GatheringInfoDAOImpl implements GatheringInfoDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public GatheringInfoVO read(String gath_no) {
		GatheringInfoVO vo = sqlSession.selectOne("gathering.info.read", gath_no);
		return vo;
	}
}
