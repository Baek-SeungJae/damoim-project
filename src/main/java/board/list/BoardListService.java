package board.list;

import java.util.List;

public interface BoardListService {
	List<BoardListVO> boardList(String gath_no, String board_category);
	int insert(BoardListVO board);
	BoardListVO detailView(String board_no);
}