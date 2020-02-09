package board.list;

import java.awt.Image;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import board.comment.BoardCommentService;
import board.comment.BoardCommentVO;
import gathering.info.GatheringInfoService;
import gathering.info.GatheringInfoVO;
import gathering.info.GatheringMemberVO;
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
	
	@Autowired
	BoardCommentService commentservice;
	
	@RequestMapping("/gathering/board.do")
	public ModelAndView boardList(String gath_no, String board_category,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("user");
		List<BoardListVO> list = boardservice.boardList(gath_no,board_category);
		GatheringInfoVO gathering = gatheringservice.read(gath_no);
		mav.addObject("gathering", gathering);
		mav.addObject("boardlist", list);
		mav.addObject("gath_no",gath_no);
		mav.addObject("board_category",board_category);
		mav.addObject("boardlistcount",list.size());
		if(vo!=null) {
			GatheringMemberVO memcheck = gatheringservice.memberCheckOfGathering(vo.getMem_id(), gath_no);
			if(memcheck!=null) {
				mav.addObject("memchk",true);
			}
			else
				mav.addObject("memchk",false);
		}else {
			mav.addObject("memchk",false);
		}
		System.out.println(list.size());
		mav.setViewName("gathering/board");
		return mav;
	}
	
	@RequestMapping(value="/gathering/ajax_board.do", method=RequestMethod.GET, produces="application/json;charset=utf-8")
	public @ResponseBody ArrayList<BoardListVO> AjaxboardList(String gath_no, String board_category) {
		System.out.println(gath_no+", "+board_category);
		ArrayList<BoardListVO> list = (ArrayList<BoardListVO>)boardservice.boardList(gath_no,board_category);
		return list;
	}
	
	
	@RequestMapping("/gathering/article.do")
	public ModelAndView gatheringArticle(String gath_no, String board_no, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("user");
		boardservice.searchcount(board_no);
		mav.addObject("gath_no",gath_no);
		List<BoardCommentVO> comment = commentservice.commentView(board_no);
		mav.addObject("comment", comment);
		mav.addObject("commentcount",comment.size());
		GatheringInfoVO gathering = gatheringservice.read(gath_no);
		mav.addObject("gathering", gathering);
		BoardListVO board = boardservice.detailView(board_no);
		mav.addObject("board",board);
		MemberVO member = scheMemService.memberDetail(board.getBoard_mno());
		mav.addObject("member", member);
		if(vo!=null) {
			GatheringMemberVO memcheck = gatheringservice.memberCheckOfGathering(vo.getMem_id(), gath_no);
			if(memcheck!=null) {
				mav.addObject("memchk",true);
			}
			else
				mav.addObject("memchk",false);
		}else {
			mav.addObject("memchk",false);
		}
		mav.setViewName("gathering/article");
		return mav;
	}
	@RequestMapping("/gathering/articledelete.do")
	public String articleDelete(String board_no,String gath_no, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("user");
		if(vo!=null){
			int result = boardservice.delete(board_no);
		}
		return "redirect:/gathering/board.do?gath_no="+gath_no+"&pagenum=0&board_category=all";
	}
	
	@RequestMapping("/gathering/newarticle.do")
	public ModelAndView gatheringNewArticle(String gath_no, String state, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("user");
		if(vo!=null) {
			GatheringMemberVO memcheck = gatheringservice.memberCheckOfGathering(vo.getMem_id(), gath_no);
			if(memcheck!=null) {
				mav.addObject("memchk",true);
			}
			else
				mav.addObject("memchk",false);
		}else {
			mav.addObject("memchk",false);
		}
		GatheringInfoVO gathering = gatheringservice.read(gath_no);
		mav.addObject("gathering", gathering);
		mav.addObject("gath_no",gath_no);
		mav.addObject("state",state);
		mav.setViewName("gathering/newarticle");
		return mav;
	}
	@RequestMapping(value="/gathering/writearticle.do", method = RequestMethod.POST) //글쓰기 
	public ModelAndView insert(BoardListVO board, HttpServletRequest request) {
		String gath_no =board.getBoard_gno();
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("user");
		int result = boardservice.insert(board);
		mav.setViewName("redirect:/gathering/board.do?gath_no="+gath_no+"&pagenum=0&board_category=all");
		return mav;
	}
	
	@RequestMapping("/gathering/updatearticle.do")
	public ModelAndView updateArticle(BoardListVO board, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("user");
		int result = boardservice.update(board);
		mav.setViewName("redirect:/gathering/board.do?gath_no="+board.getBoard_gno()+"&pagenum=0&board_category=all");
		return mav;
	}
	
	
}
