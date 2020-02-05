package gathering.join;

public interface ScheduleJoinDAO {
	int insert(ScheduleJoinVO joinUser);
	int findbyid(String sche_mem_mno);
}
