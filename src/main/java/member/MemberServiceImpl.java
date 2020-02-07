package member;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	@Qualifier("memDao")
	MemberDAO dao;
	
	@Override
	public MemberVO login(MemberVO loginUser) {
		MemberVO user = dao.login(loginUser);
		return user;
	}
	
	@Override
	public int insert(MemberVO user, MultipartFile file, String realpath, String filename) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean passCheck(String pass) {
		return dao.passCheck(pass);
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
		return dao.read(id);
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
	public ArrayList<MemberVO> getTreeEmpList(String deptno) {
		// TODO Auto-generated method stub
		return null;
	}

}
