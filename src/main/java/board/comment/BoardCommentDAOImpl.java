package board.comment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("BoardCommentDAO")
public class BoardCommentDAOImpl implements BoardCommentDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public List<BoardCommentVO> commentView(String gath_no, String board_no) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("gath_no",gath_no);
		map.put("board_no", board_no);
		return sqlSession.selectList("board.comment.listAll", map);
	}

}
