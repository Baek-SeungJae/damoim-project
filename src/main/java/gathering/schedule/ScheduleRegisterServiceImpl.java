package gathering.schedule;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScheduleRegisterServiceImpl implements ScheduleRegisterService {
	@Autowired
	ScheduleRegisterDAO dao;
	
	@Override
	public int register(ScheduleRegisterVO user) {
		return dao.insert(user);
	}
	
	@Override
	public ScheduleRegisterVO moimList(ScheduleRegisterVO moimInfo) {
		ScheduleRegisterVO list=null;
		list = dao.moimList();
		return list;
	}

}
