package gathering.join;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ScheduleJoinDAO")
public class ScheduleJoinDAOImpl implements ScheduleJoinDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insert(ScheduleJoinVO joinUser) {
		return sqlSession.insert("gathering.join.insert", joinUser);
	}

	@Override
	public int findbyid(String sche_mem_mno) {
		return sqlSession.selectOne("gathering.join.findbyid", sche_mem_mno);
	}

}
