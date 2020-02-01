package board.list;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("")
public class BoardListServiceImpl implements BoardListService {
	
	@Autowired
	@Qualifier("boardDAO")
	BoardListDAO dao;
	
	@Override
	public List<BoardListVO> boardList() {
		return dao.boardList();
	}

}
