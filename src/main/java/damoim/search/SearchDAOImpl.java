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
	public List<GatheringInfoVO> searchList(String gath_major, String gath_minor) {
		System.out.println("서치 다오"+gath_major+"////"+gath_minor);
		Map<String, String> map = new HashMap<String, String>();
		map.put("gath_major", gath_major);
		map.put("gath_minor", gath_minor);
		System.out.println(map);
		System.out.println(gath_major);
		List<GatheringInfoVO> list = sqlSession.selectList("damoim.test.search", gath_major);

		System.out.println("dao : " + list.size());
		return list;
	}

}
