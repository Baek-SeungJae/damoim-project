package damoim.search;

import java.util.List;

import gathering.info.GatheringInfoVO;

public interface SearchService {
	List<GatheringInfoVO> searchList(String gath_major, String gath_minor );


}
