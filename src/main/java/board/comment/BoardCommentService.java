package board.comment;

import java.util.List;

public interface BoardCommentService {
	List<BoardCommentVO> commentView(String gath_no, String board_no);
}
