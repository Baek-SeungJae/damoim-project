package board.list;

import java.util.List;

public interface BoardListService {
	List<BoardListVO> boardList(String gathering, String board);
	int insert(BoardListVO board);
}