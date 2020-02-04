package gathering.info;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("GatheringDAO")
public class GatheringInfoDAOImpl implements GatheringInfoDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public GatheringInfoVO read(String no) {
		return sqlSession.selectOne("gathering.info.read", no);
	}
}
