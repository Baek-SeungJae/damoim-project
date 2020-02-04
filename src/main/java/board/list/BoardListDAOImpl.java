package board.list;

import java.util.HashMap;
import java.util.List;
//mybatis의 핵심클래스를 이용해서 작성
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardListDAO")
public class BoardListDAOImpl implements BoardListDAO {
	
	@Autowired
	SqlSession sqlSession;
	public List<BoardListVO> boardList(String gath_no, String board_bno) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("gath_no",gath_no);
		map.put("board_bno", board_bno);
		return sqlSession.selectList("board.list.listAll",map);
	}
	@Override
	public int insert(BoardListVO board) {
		return sqlSession.insert("multi.erp.board.insert", board);
	}
	
}
