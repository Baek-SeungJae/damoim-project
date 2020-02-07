package board.list;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import gathering.info.GatheringInfoService;
import gathering.info.GatheringInfoVO;
import gathering.schedule.member.ScheMemService;
import member.MemberVO;
@Controller
public class BoardController {
	@Autowired
	BoardListService boardservice;
	
	@Autowired
	GatheringInfoService gatheringservice;
	
	@Autowired
	ScheMemService scheMemService;
	
	@RequestMapping("/gathering/board.do")
	public ModelAndView boardList(String gath_no, String board_category) {
		ModelAndView mav = new ModelAndView();
		List<BoardListVO> list = boardservice.boardList(gath_no,board_category);
		GatheringInfoVO gathering = gatheringservice.read(gath_no);
		mav.addObject("gathering", gathering);
		mav.addObject("boardlist", list);
		mav.addObject("gath_no",gath_no);
		mav.addObject("board_category",board_category);
		mav.addObject("boardlistcount",list.size());
		mav.setViewName("gathering/board");
		return mav;
	}
	
	@RequestMapping(value="/gathering/ajax_board.do", method=RequestMethod.GET, produces="application/json;charset=utf-8")
	public @ResponseBody ArrayList<BoardListVO> AjaxboardList(String gath_no, String board_category) {
		System.out.println(gath_no+", "+board_category);
		ArrayList<BoardListVO> list = (ArrayList<BoardListVO>)boardservice.boardList(gath_no,board_category);
		return list;
	}
	
	@RequestMapping(value="/gathering/writearticle.do", method = RequestMethod.POST)
	public String insert(BoardListVO board) {
		System.out.println(board);
		int result = boardservice.insert(board);
		return "redirect:/gathering/board.do?gath_no=G001&pagenum=0&board_category=all";
	}
	
	@RequestMapping("/gathering/article.do")
	public ModelAndView gatheringArticle(String gath_no, String board_no) {
		ModelAndView mav = new ModelAndView();
		GatheringInfoVO gathering = gatheringservice.read(gath_no);
		BoardListVO board= boardservice.detailView(board_no);
		mav.addObject("gathering", gathering);
		mav.addObject("gath_no",gath_no);
		mav.addObject("board",board);
		MemberVO member = scheMemService.memberDetail(board.getBoard_mno());
		System.out.println(board.getBoard_mno());
		System.out.println(member);
		mav.setViewName("gathering/article");
		return mav;
	}
	
	@RequestMapping("/gathering/newarticle.do")
	public ModelAndView gatheringNewArticle(String gath_no) {
		ModelAndView mav = new ModelAndView();
		GatheringInfoVO gathering = gatheringservice.read(gath_no);
		mav.addObject("gathering", gathering);
		mav.addObject("gath_no",gath_no);
		mav.setViewName("gathering/newarticle");
		return mav;
	}
}
