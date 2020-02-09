package gathering.schedule;

import java.util.Date;
import java.util.List;

public interface ScheduleRegisterDAO {
	int insert(ScheduleRegisterVO moimInfo);
	List<ScheduleRegisterVO> moimList(String gath_no);
	List<ScheduleRegisterVO> moimListAll(String gath_no);
	List<Date> calendar(String gath_no);
}
