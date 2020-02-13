package damoim.search;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gathering.info.GatheringInfoVO;

@Repository("searchDao")
public class SearchDAOImpl implements SearchDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<GatheringInfoVO> searchList(String gath_major) {
		System.out.println("서치 다오"+gath_major);
		List<GatheringInfoVO> list = sqlSession.selectList("damoim.search.search", gath_major);

		System.out.println("dao : " + list.size());
		return list;
	}

}
