package gathering.schedule;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("registerDao")
public class ScheduleRegisterDAOImpl implements ScheduleRegisterDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insert(ScheduleRegisterVO moimInfo) {
		return sqlSession.insert("gathering.schedule.insert", moimInfo);
	}

	@Override
	public List<ScheduleRegisterVO> moimList(String gath_no) {
		return sqlSession.selectList("gathering.schedule.listall", gath_no);
	}
	
	@Override
	public List<ScheduleRegisterVO> moimListAll(String gath_no) {
		return sqlSession.selectList("gathering.schedule.moimlistall", gath_no);
	}

	@Override
	public List<Date> calendar(String gath_no) {
		return sqlSession.selectList("gathering.schedule.calendarList", gath_no);
	}
	
	
}
