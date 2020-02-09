package board.comment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.MemberVO;

@Controller
public class CommentComtroller {
	@Autowired
	BoardCommentService commentservice;

	@RequestMapping(value = "/gathering/article/comment.do", method = RequestMethod.POST)
	public String insert(BoardCommentVO comment, String gath_no, String board_no) {
		int result = commentservice.insert(comment);
		return "redirect:/gathering/article.do?gath_no=" + gath_no + "&board_no=" + board_no + "&pagenum=0";
	}

	@RequestMapping("/gathering/comment/like.do")
	public String like(String gath_no, String board_no, String comment_no, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("user");
		if (vo != null) {
			BoardCommentLikeVO like = commentservice.likesearch(comment_no, vo.getMem_id());
			if (like == null) {
				commentservice.likeinsert(like);
			} else {
				commentservice.likedelete(like);
			}
		}
		return "redirect:/gathering/article.do?gath_no=" + gath_no + "&board_no=" + board_no + "&pagenum=0";
	}
}
