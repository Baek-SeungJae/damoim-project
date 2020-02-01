package board.list;

import java.util.List;
//mybatis의 핵심클래스를 이용해서 작성

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardDAO")
public class BoardListDAOImpl implements BoardListDAO {
	
	@Autowired
	SqlSession sqlSession;
	public List<BoardListVO> boardList() {
		return sqlSession.selectList("board.list.listall");
	}

	
}
