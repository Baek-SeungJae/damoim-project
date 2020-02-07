package board.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class BoardCommentServiceImpl implements BoardCommentService {
	
	@Autowired
	@Qualifier("BoardCommentDAO")
	BoardCommentDAO dao;
	
	@Override
	public List<BoardCommentVO> commentView(String gath_no, String board_no) {
		
		return dao.commentView(gath_no, board_no);
	}

}
