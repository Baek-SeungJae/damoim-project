package home;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import gathering.info.GatheringInfoVO;

interface HomeService {

	List<GatheringInfoVO> topList();

	List<GatheringInfoVO> loginRecommendList(String mem_home);

	List<GatheringInfoVO> recommendList();

	List<GatheringInfoVO> myList();

}
