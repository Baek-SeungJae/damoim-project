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
	public List<BoardListVO> boardList(String gathering, String board) {
		return dao.boardList(gathering,board);
	}

}
