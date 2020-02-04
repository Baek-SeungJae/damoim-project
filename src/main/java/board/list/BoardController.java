package board.list;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class BoardController {
	@Autowired
	BoardListService service;
	
	@RequestMapping("/gathering/board.do")
	public ModelAndView BoardList(String gathering, String board) {
		ModelAndView mav = new ModelAndView();
		List<BoardListVO> list = service.boardList(gathering,board);
		mav.addObject("boardlist", list);
		mav.addObject("gathering",gathering);
		mav.addObject("board",board);
		mav.addObject("boardlistcount",list.size());
		mav.setViewName("gathering/board");
		return mav;
	}
	@RequestMapping(value="/gathering/writearticle.do", method = RequestMethod.POST)
	public String insert(BoardListVO board) {
		//System.out.println(board);
		//int result = service.insert(board);
		System.out.println("호출된다.");
		return "redirect:/gathering/board.do";
	}
	@RequestMapping("/gathering/article.do")
	public String gatheringArticle() {
		return "gathering/article";
	}
	@RequestMapping("/gathering/newarticle.do")
	public String gatheringNewArticle() {
		return "gathering/newarticle";
	}
}
