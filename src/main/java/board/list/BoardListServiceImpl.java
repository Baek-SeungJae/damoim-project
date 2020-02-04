package board.list;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("BoardListDAO")
public class BoardListServiceImpl implements BoardListService {
	
	@Autowired
	@Qualifier("boardListDAO")
	BoardListDAO dao;
	
	@Override
	public List<BoardListVO> boardList(String gath_no, String board_bno) {
		return dao.boardList(gath_no,board_bno);
	}
	
	@Override
	public int insert(BoardListVO board) {
		return dao.insert(board);
	}
}
