package board.list;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class BoardListServiceImpl implements BoardListService {

	@Autowired
	@Qualifier("boardListDAO")
	BoardListDAO dao;

	@Override
	public List<BoardListVO> boardList(String gath_no, String board_category) {
		List<BoardListVO> list = null;
		if (board_category != null) {
			System.out.println(5);
			if (board_category.equals("all")) {
				System.out.println(6);
				list = dao.boardList(gath_no, board_category);
			} else {
				list= dao.category(gath_no,board_category);
			}
		}
		return list;
	}

	@Override
	public int insert(BoardListVO board) {
		return dao.insert(board);
	}
	@Override
	public BoardListVO detailView(String board_no) {
		return dao.detailView(board_no);
	}
}
