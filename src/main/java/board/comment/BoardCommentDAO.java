package board.comment;

import java.util.List;

public interface BoardCommentDAO {
	List<BoardCommentVO> commentView(String gath_no, String board_no);
}
