package member;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memDao")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public MemberVO login(MemberVO loginUser) {
		return sqlSession.selectOne("member.login", loginUser);
	}
	
	@Override
	public ArrayList<MemberVO> getTreeEmpList(String deptno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(MemberVO user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<MemberVO> getMemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberVO read(String id) {
		return sqlSession.selectOne("gathering.join.memberDetail",id);
	}

	@Override
	public ArrayList<MemberVO> search(String column, String search, String pass) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(MemberVO user) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public boolean passCheck(String pass) {
		boolean result = false;
		MemberVO user=  sqlSession.selectOne("member.passcheck",pass);
		if(user!=null) {
			result = true;
		}
		return result;
	}

	@Override
	public MemberVO findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}