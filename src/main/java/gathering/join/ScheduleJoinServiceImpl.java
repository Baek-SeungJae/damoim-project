package gathering.join;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import gathering.schedule.ScheduleRegisterVO;
import member.MemberVO;

@Service
public class ScheduleJoinServiceImpl implements ScheduleJoinService {
	@Autowired
	@Qualifier("ScheduleJoinDAO")
	ScheduleJoinDAO dao;
	
	@Override
	public int register(String id, String gath_no) {
		return dao.insert(id, gath_no);
	}

	@Override
	public List<MemberVO> ranklist(String gath_no) {
		List<MemberVO> list = null;
		list = dao.ranklist(gath_no);
		return list;
	}


}
