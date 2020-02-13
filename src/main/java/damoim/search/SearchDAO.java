package damoim.search;

import java.util.List;

import gathering.info.GatheringInfoVO;

public interface SearchDAO {
	List<GatheringInfoVO> searchList(String gath_major);

}
