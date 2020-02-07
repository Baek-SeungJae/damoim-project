package gathering.schedule;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("registerDao")
public class ScheduleRegisterDAOImpl implements ScheduleRegisterDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insert(ScheduleRegisterVO user) {
		return sqlSession.insert("gathering.schedule.insert", user);
	}

	@Override
	public ScheduleRegisterVO moimList() {
		return sqlSession.selectOne("gathering.schedule.listtwo");
	}
	
	
}
