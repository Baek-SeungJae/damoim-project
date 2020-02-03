package board.list;

import java.util.List;

public interface BoardListDAO {

	List<BoardListVO> boardList(String gathering, String board);
	int insert(BoardListVO board);
}
