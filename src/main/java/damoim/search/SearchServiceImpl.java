package damoim.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import gathering.info.GatheringInfoVO;

@Service
public class SearchServiceImpl implements SearchService{
	
	@Autowired
	@Qualifier("searchDao")
	SearchDAO dao;
	
	public List<GatheringInfoVO> searchList(String gath_major, String gath_minor) {
		System.out.println("서치 서비스"+gath_major+"////"+gath_minor);
		List<GatheringInfoVO> list = dao.searchList(gath_major, gath_minor);
		
		System.out.println("서비스 : " + list.size());
		return list;
	}

}
