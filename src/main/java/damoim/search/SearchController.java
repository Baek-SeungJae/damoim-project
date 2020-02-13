package damoim.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import gathering.info.GatheringInfoVO;
import interest.interestService;
import interest.interest_majorVO;

@Controller
public class SearchController {
	
	@Autowired
	SearchService service;
	@Autowired
	interestService inter_service; 
	
	@RequestMapping("/search/search.do")
	public String searchPage() {
		return "search";
	
	}	
		
		
	@RequestMapping(value="/search/search.do", method=RequestMethod.POST)
	public ModelAndView search(String gath_major ) {
		System.out.println("물고온 값"+gath_major);
		ModelAndView mav = new ModelAndView();
		List<GatheringInfoVO> list = service.searchList(gath_major);
		List<interest_majorVO> majorlist = inter_service.majorlist();
		mav.addObject("majorlist", majorlist);
		mav.addObject("searchList", list);
		mav.setViewName("search");
		System.out.println("mav: "+mav);
		System.out.println("list: "+list);
		System.out.println("size: "+list.size());
		return mav;
	}
}
