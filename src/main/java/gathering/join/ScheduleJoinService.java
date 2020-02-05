package gathering.join;


public interface ScheduleJoinService {
	int register(ScheduleJoinVO joinUser);
	int findbyid(String sche_mem_mno);
}
