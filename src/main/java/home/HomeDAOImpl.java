package home;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gathering.info.GatheringInfoVO;

@Repository("homeDao")
public class HomeDAOImpl implements HomeDAO {
	@Autowired
	SqlSession sqlSession;
	
	/*@Override
	public List<BoardVO> boardList() {
		// select문의 실행결과가 여러 개의 레코드를 반환하는 경우 사용
		// sqlSession.selectList("mapper에 등록한 sql문 id (namespace포함)");
		return sqlSession.selectList("multi.erp.board.listall");
	}*/
	
	@Override
	public List<GatheringInfoVO> topList() {
		
		List<GatheringInfoVO> toplist = sqlSession.selectList("home.topList");
		System.out.println(toplist.size());
		return toplist;
		
	}
	
	// 시험용
	@Override
	public List<GatheringInfoVO> myList() {
		return sqlSession.selectList("home.myList");
	}
	
	@Override
	public List<GatheringInfoVO> loginRecommendList(String mem_home) {
		return sqlSession.selectList("home.loginRecommendList", mem_home);
	}

	@Override
	public List<GatheringInfoVO> recommendList() {
		return sqlSession.selectList("home.recommendList");
	}



}
