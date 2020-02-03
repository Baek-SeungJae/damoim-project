package member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.list.BoardListService;
import board.list.BoardListVO;

@Controller
public class MemberController {
	@Autowired
	BoardListService service;
	@RequestMapping("/gathering/board.do")
	public ModelAndView BoardList() {
		ModelAndView mav = new ModelAndView();
		List<BoardListVO> list = service.boardList();
		
		mav.addObject("boardlist", list);
		mav.setViewName("gathering/board");
		
		return mav;
	}
}
