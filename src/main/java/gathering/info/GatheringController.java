package gathering.info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.list.BoardListService;
import board.list.BoardListVO;

@Controller
public class GatheringController {	
	@Autowired
	GatheringInfoService service;
	@Autowired
	BoardListService boardservice;
	@RequestMapping("/gathering/home.do")
	public ModelAndView gatheringHome(String gath_no) {
		ModelAndView mav = new ModelAndView();
		GatheringInfoVO gathering = service.read(gath_no);
		List<BoardListVO> boardlist = boardservice.boardList(gathering.getGath_no(), "all");
		mav.addObject("gathering", gathering);
		mav.addObject("boardlist", boardlist);
		mav.setViewName("gathering/home");
		return mav;
	}
}
