package board.list;

import java.util.List;

public interface BoardListService {
	List<BoardListVO> boardList(String gath_no, String board_bno);
	int insert(BoardListVO board);
}