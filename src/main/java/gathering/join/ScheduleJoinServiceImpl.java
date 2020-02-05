package gathering.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class ScheduleJoinServiceImpl implements ScheduleJoinService {
	@Autowired
	@Qualifier("ScheduleJoinDAO")
	ScheduleJoinDAO dao;
	
	@Override
	public int register(ScheduleJoinVO joinUser) {
		return dao.insert(joinUser);
	}

	@Override
	public int findbyid(String sche_mem_mno) {
		return dao.findbyid(sche_mem_mno);
	}

}
