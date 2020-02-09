package board.comment;

import java.util.List;

public interface BoardCommentService {
	List<BoardCommentVO> commentView(String board_no);
	int insert(BoardCommentVO comment);
	BoardCommentLikeVO likesearch(String commnet_like_cno, String comment_like_mno);
	int likeinsert(BoardCommentLikeVO like);
	int likedelete(BoardCommentLikeVO like);
}
