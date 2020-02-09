package board.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class BoardCommentServiceImpl implements BoardCommentService {
	
	@Autowired
	@Qualifier("BoardCommentDAO")
	BoardCommentDAO dao;
	
	@Override
	public List<BoardCommentVO> commentView(String board_no) {
		return dao.commentView(board_no);
	}
	@Override
	public int insert(BoardCommentVO comment) {
		return dao.insert(comment);
	}
	@Override
	public BoardCommentLikeVO likesearch(String commnet_like_cno, String comment_like_mno){
		return dao.likesearch(commnet_like_cno,comment_like_mno);
	}
	@Override
	public int likedelete(BoardCommentLikeVO like) {
		return dao.likedelete(like);
	}
	@Override
	public int likeinsert(BoardCommentLikeVO like) {
		return dao.likeinsert(like);
	}
}
