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
	public List<BoardCommentVO> commentView(String board_no) {
		return sqlSession.selectList("board.comment.listAll", board_no);
	}
	@Override
	public int insert(BoardCommentVO comment) {
		return sqlSession.insert("board.comment.insert",comment);
	}
	@Override
	public BoardCommentLikeVO likesearch(String commnet_like_cno, String comment_like_mno) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("commnet_like_cno", commnet_like_cno);
		map.put("comment_like_mno", comment_like_mno);
		return sqlSession.selectOne("board.comment.likesearch", map);
	}
	@Override
	public int likedelete(BoardCommentLikeVO like) {
		return sqlSession.delete("board.comment.likedelete", like);
	}
	@Override
	public int likeinsert(BoardCommentLikeVO like) {
		return sqlSession.insert("board.comment.likedelete", like);
	}
}
