package board.list;

import java.util.List;

public interface BoardListDAO {

	List<BoardListVO> boardList(String gath_no, String board_category);
	int insert(BoardListVO board);
	List<BoardListVO> category(String gath_no, String board_category);
}
