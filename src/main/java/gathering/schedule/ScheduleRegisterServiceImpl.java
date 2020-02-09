package gathering.schedule;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScheduleRegisterServiceImpl implements ScheduleRegisterService {
	@Autowired
	ScheduleRegisterDAO dao;
	
	@Override
	public int register(ScheduleRegisterVO moimInfo) {
		int list = dao.insert(moimInfo);
		return list;
	}
	
	@Override
	public List<ScheduleRegisterVO> moimList(String gath_no) {
		List<ScheduleRegisterVO> list=null;
		list = dao.moimList(gath_no);
		return list;
	}

	@Override
	public List<Date> calendar(String gath_no) {
		List<Date> result = null;
		result = dao.calendar(gath_no);
		return result;
	}

	@Override
	public List<ScheduleRegisterVO> moimListAll(String gath_no) {
		List<ScheduleRegisterVO> list=null;
		list = dao.moimListAll(gath_no);
		return list;
	}

}
